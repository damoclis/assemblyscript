//refer to EOS's and Ultrain's doc

import { Program, Element, ElementKind, ClassPrototype, FunctionPrototype } from "./program";
import {IndentUtil, AstUtil, TypeAnalyzer, AbiType, AbiHelper} from "./util/abiutil";
import { indent } from "./util";
import { DecoratorKind, FunctionDeclaration,ParameterNode, NamedTypeNode, DeclarationStatement, ClassDeclaration, NodeKind, FieldDeclaration, TypeNode, BreakStatement, Expression} from "./ast";
import { Strings } from "./util/primitiveutil";
import { SerializeInserter, InsertPoint, SerializePoint } from "./inserter";



class TypeDef{
  new_type_name: string;
  type: string;
  constructor(newTypeName: string, type: string) {
    this.new_type_name = newTypeName;
    this.type = type;
  }
}


class StructDef{
  name: string;
  base: string;
  fileds: Array<Object> = new Array<Object>();
  constructor(name: string="", base: string="") {
    this.name = name;
    this.base = base;
  }

  pushFields(name: string, type: string) {
    this.fileds.push({ "name": name, "type": type });
  }
}

class ActionDef{
  name: string;
  type: string;
  constructor(name: string, type: string) {
    this.name = name;
    this.type = type;
  }
}

class TableDef{
  name: string;
  type: string;
  index_type: string = "i64";
  keys_names: string[] = ["currency"];
  keys_types: string[] = ["uint64"];
  constructor(name: string, type: string) {
    this.name = name;
    this.type = type;
  }
}

class AbiDef{
  version: string = "Damoclis VM:1.0";
  types: Array<TypeDef> = new Array<TypeDef>();
  structs: Array<StructDef> = new Array<StructDef>();
  actions: Array<ActionDef> = new Array<ActionDef>();
  tables: Array<TableDef> = new Array<TableDef>();
}

export class AbiData {
  abi: AbiDef = new AbiDef();
  program: Program;
  code: string = "";

  typeLookup: Map<string, string> = new Map();
  structLookup: Map<string, StructDef> = new Map();
  elementLookup: Map<string, Element> = new Map();  //save the element with the kind Class_Prototype
  typeAliasSet: Set<string> = new Set<string>();
  insertPoints: Map<string, Array<InsertPoint>> = new Map<string, Array<InsertPoint>>();

  constructor(program: Program) {
    this.program = program;
    this.init();
  }

  private init(): void {
    let serializeInserter: SerializeInserter = new SerializeInserter(this.program);
    let serializePoints = serializeInserter.getInsertPoints();
    this.insertPoints = InsertPoint.toSortedMap(serializePoints);

    let indenter = new IndentUtil();
    indenter.pushRow("export function apply():void{")

    for (let [key, element] of this.program.elementsByName) {
      if (element.kind == ElementKind.CLASS_PROTOTYPE) {
        let prototype = <ClassPrototype>element;
        if (!this.elementLookup.has(key)) {
          let classAttatchCode: Array<string> = this.resolveClassPrototype(prototype);
          indenter.addAll(classAttatchCode);
          this.elementLookup.set(key, element);
        }
      }
    }

    indenter.pushRow("}");
    this.code = indenter.content.join("\n");
    console.log(this.code);
    console.log("init done!");
  }

  //get the attach code (apply function)
  //valid only for the class extends Contract!
  private resolveClassPrototype(prototype: ClassPrototype): Array<string> {
    //resolve the database decorator for every class
    this.getDatabaseInfo(prototype);
    if (prototype.instanceMembers && AstUtil.extendedContract(prototype)) {
      console.log("find the class extended Contract!");
      let body = new Array<string>();
      let actionDecorate = false;
      let contractName = prototype.name;
      let contractInstance = "_" + contractName;

      body.push(`  let ${contractInstance}=new ${contractName}();`);
      body.push(`  let ds = ${contractInstance}.getDataStream();`);
      

      //resolve the func with the action decorator
      for (let [key, instance] of prototype.instanceMembers) {
        if (this.isActionFuncPrototype(instance)) {
          actionDecorate = true;
          let funcProto = <FunctionPrototype>instance;
          this.resolveFuncPrototype(funcProto);

          let declaration = <FunctionDeclaration>funcProto.declaration;
          let funcName = declaration.name.range.toString();
          let signature = declaration.signature;
          body.push(`  if (${contractInstance}.isAction("${funcName}")){`)

          let allParams = new Array<string>();
          //insert the code to get the actionData and call the action
          for (let i = 0; i < signature.parameters.length; i++) {
            let param = signature.parameters[i];
            let typeInfo = new TypeAnalyzer(funcProto, <NamedTypeNode>param.type);
            let paramName = param.name.range.toString();
            allParams.push(paramName);
            //if the param is not array type
            if (typeInfo.abiType != AbiType.ARRAY) {
              switch (typeInfo.abiType) {
                case AbiType.STRING:
                  body.push(`    let ${paramName}=ds.readString();`);
                  break;
                case AbiType.NUMBER:
                  body.push(`    let ${paramName}=ds.read<${typeInfo.typeName}>()`);
                  break;
                default:
                  //first resolve the calss type.
                  let ele = funcProto.lookup(typeInfo.typeName);
                  let classProto = <ClassPrototype>ele;
                  this.classToStruct(classProto);
                  body.push(`    let ${paramName}=new ${typeInfo.typeName}();`)
                  body.push(`    ${paramName}.deserialize(ds)`);
              }
            } else {  //if the param type is Array
              let argAbiType = typeInfo.getArrayArgAbiType();
              let argTypeName = typeInfo.getArrayArgType();
              switch (argAbiType) {
                case AbiType.NUMBER:
                  body.push(`    let ${paramName}=ds.readvector<${argTypeName}>();`);
                  break;
                case AbiType.STRING:
                  body.push(`    let ${paramName}=ds.readStringVector();`);
                  break;
                default:
                  body.push(`    let ${paramName}=ds.readComplexVector<${argTypeName}>();`);
                  break;
              }
            }
          }

          //insert the return code 
          //Todo: array type?
          let returnTypeInfo = new TypeAnalyzer(funcProto, <NamedTypeNode>signature.returnType);
          if (returnTypeInfo.typeName == "void") {
            body.push(`    ${contractInstance}.${funcName}(${allParams.join(",")});`);
          } else {
            console.log("return type is " + returnTypeInfo.typeName);
            //only support builtin type to return
            if (AbiHelper.abiTypeLookup.get(returnTypeInfo.typeName) == null) {
              throw new Error("only support to return builtin type");
            }
            body.push(`    let result=${contractInstance}.${funcName}(${allParams.join(",")});`);
            if (returnTypeInfo.abiType == AbiType.NUMBER) {
              body.push(`    ${contractInstance}.ReturnU64(<u64>result);`);
            }else if (returnTypeInfo.abiType == AbiType.STRING) {
              body.push(`    ${contractInstance}.ReturnString(result);`);
            } else {
              body.push(`    ${contractInstance}.ReturnBytes(result.bytes);`)
            }
          }

          body.push("  }");
        }
      }
      if (actionDecorate) {
        return body;
      }
    }


    return new Array();
  }

  //resolve the database decorators
  private getDatabaseInfo(prototype: ClassPrototype) :void{
    let decorators = prototype.decoratorNodes;
    if (!decorators) {
      return;
    }
    for (let decorator of decorators) {
      //Decorator argument must have only one argument
      if (decorator.decoratorKind == DecoratorKind.DATABASE && decorator.arguments) {
        if (decorator.arguments.length != 1) {
          throw new Error("Database decorator must have only one argument!");
        }
        let type = prototype.name;  
        let name = this.getString(prototype, decorator.arguments[0]);
        this.abi.tables.push(new TableDef(name, type));
        
        this.classToStruct(prototype);
      }
    }
  }

  //get the string:
  //1. delete the quotation
  //Todo: 2. get the string from the constant
  private getString(ele: Element, expr: Expression): string{
    let arg: string = expr.range.toString();
    if (Strings.isAroundQuotation(arg)) {
      return arg.substring(1, arg.length - 1);
    }
    return "";
  }

  private isActionFuncPrototype(element: Element): bool{
    if (element.kind == ElementKind.FUNCTION_PROTOTYPE) {
      let funcPrototype = <FunctionPrototype>element;
      return AstUtil.haveDecorator(funcPrototype.declaration, DecoratorKind.ACTION);
    }
    return false;
  }


  private resolveFuncPrototype(prototype: FunctionPrototype):void{
    let declaration = <FunctionDeclaration>prototype.declaration;
    let funcName = declaration.name.range.toString();
    let signature = declaration.signature;

    let struct = new StructDef(funcName);

    //resolve the parameters of a function
    let parameters: ParameterNode[] = signature.parameters;
    for (let parameter of parameters) {
      let type = parameter.type;
      let typeInfo = new TypeAnalyzer(prototype, <NamedTypeNode>type);
      let abiType = typeInfo.getAbiDeclareType();
      struct.pushFields(parameter.name.range.toString(), abiType);
      this.addAbiTypeAlias(typeInfo);
    }

    this.addToStruct(struct);
    let action: ActionDef = new ActionDef(funcName,funcName);
    this.abi.actions.push(action);
  }

  private addAbiTypeAlias(typeInfo: TypeAnalyzer): void{
    let asTypes = typeInfo.getAsTypes();
    for (let asType of asTypes) {
      if (this.typeAliasSet.has(asType)) {
        return;
      }

      //if this argument is alias type, get its basic type
      let abiType = typeInfo.findSourceAbiType(asType);
      if (abiType && abiType != asType) {
        this.abi.types.push(new TypeDef(asType, abiType));
      }

      //if this argument is class, convert it to struct
      let element = typeInfo.lookupElement(asType);
      if (element && element.kind == ElementKind.CLASS_PROTOTYPE) {
        let prototype = <ClassPrototype>element;
        this.classToStruct(prototype);
      }
      this.typeAliasSet.add(asType);
    }

  }

  private classToStruct(prototype: ClassPrototype): void{
    if (!this.typeLookup.get(prototype.name)) {
      let struct = new StructDef();
      struct.name = prototype.name;
      this.addFiledFromClass(prototype, struct);
      this.addToStruct(struct);
    }
  }

  private addFiledFromClass(prototype: ClassPrototype, struct: StructDef): void{
    let members: DeclarationStatement[] = (<ClassDeclaration>prototype.declaration).members;
    if (prototype.basePrototype && AstUtil.impledSerializable(prototype.basePrototype)) {
      this.addFiledFromClass(prototype.basePrototype, struct);
    }
    for (let member of members) {
      if (member.kind == NodeKind.FIELDDECLARATION) {
        let fieldDeclare: FieldDeclaration = <FieldDeclaration>member;
        let memberName = fieldDeclare.name.range.toString();
        let memberType: TypeNode | null = fieldDeclare.type;
        if (memberType) {
          let typeInfo: TypeAnalyzer = new TypeAnalyzer(prototype, <NamedTypeNode>memberType);
          let abiType = typeInfo.getAbiDeclareType();
          struct.pushFields(memberName, abiType);
          this.addAbiTypeAlias(typeInfo);
        }
      }
    }
  }

  private addToStruct(struct: StructDef): void{
    if (!this.structLookup.has(struct.name)) {
      this.abi.structs.push(struct);
      this.structLookup.set(struct.name, struct);
    }
  }




}
