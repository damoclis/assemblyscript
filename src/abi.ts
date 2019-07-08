//refer to EOS's and Ultrain's doc

import { Program, Element, ElementKind, ClassPrototype, FunctionPrototype } from "./program";
import {IndentUtil, AstUtil, TypeAnalyzer} from "./util/abiutil";
import { indent } from "./util";
import { DecoratorKind, FunctionDeclaration,ParameterNode, NamedTypeNode, DeclarationStatement, ClassDeclaration, NodeKind, FieldDeclaration, TypeNode} from "./ast";



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
  ndex_type: string = "i64";
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

export class AbiData{
  abi: AbiDef = new AbiDef();
  program: Program;

  typeLookup: Map<string, string> = new Map();
  structLookup: Map<string, StructDef> = new Map();
  elementLookup: Map<string, Element> = new Map();  //save the element with the kind Class_Prototype
  typeAliasSet: Set<string> = new Set<string>();

  constructor(program: Program) {
    this.program = program;
    this.init();
  }

  private init():void{
    //Todo: serializeGenerator

    let indenter = new IndentUtil();

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
  }

  //get the attach code (apply function)
  //valid only for the class extends Contract!
  private resolveClassPrototype(prototype: ClassPrototype):Array<string>{
    if (prototype.instanceMembers && AstUtil.extendedContract(prototype)) {
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
          this.resolveFuncPrototype(funcProto)
        }
      }
    }
    return new Array();
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
