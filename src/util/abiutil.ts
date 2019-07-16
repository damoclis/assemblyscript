import { ClassPrototype, Element, ElementKind, TypeDefinition, Class } from "../program";
import { DeclarationStatement, DecoratorKind, NamedTypeNode, ClassDeclaration } from "../ast";
import { Signature } from "../types";

export class IndentUtil{
    private body: Array<string> = new Array<string>();
    private indent1: string = "  ";
    private padding: string;

    constructor(indentNum: i32=0) {
        while (indentNum >= 0) {
            this.padding += this.indent1;
            indentNum--;
        }
    }

    pushRow(row: string): void{
        this.body.push(this.padding + row);
    }

    addPadding(): void{
        this.padding += this.indent1;
    }

    subPadding(): void{
        this.padding = this.padding.replace(this.indent1, "");
    }

    addAll(body: string[]): void{
        for (let row of body) {
            this.body.push(row);
        }
    }

    get content(): string[]{
        return this.body;
    }
}

export class AbiHelper {
    /**
     * Main node support internal abi type
     * bool
     */
    static abiTypeLookup: Map<string, string> = new Map([
      ["i8", "int8"],
      ["i16", "int16"],
      ["i32", "int32"],
      ["i64", "int64"],
      ["isize", "uin32"],
      ["u8", "uint8"],
      ["u16", "uint16"],
      ["u32", "uint32"],
      ["u64", "uint64"],
      ["usize", "usize"],
      ["f32", "float32"],
      ["f64", "float64"],
      ["bool", "bool"],
      ["boolean", "bool"],
      ["string", "string"],
      ["String", "string"],
      ["bytes", "bytes"],
        ["hash160", "hash160"],
        ["hash256", "hash256"],
        ["hash512", "hash512"],
        ["publicKey", "publicKey"],
      ["signature","signature"]
    ]);
  }

export class AstUtil{
    static extendedContract(prototype: ClassPrototype): bool{
        let basePrototype: ClassPrototype | null = prototype.basePrototype;
        if (basePrototype && basePrototype.name == "Contract") {
            return true;
        }
        return false;
    }

    static haveDecorator(statement: DeclarationStatement, kind: DecoratorKind): bool{
        if (statement.decorators) {
            for (let decorator of statement.decorators) {
                if (decorator.decoratorKind == kind) {
                    return true;
                }
            }
        }
        return false;
    }

    static impledInterface(declaration: ClassDeclaration, interfaceName: string): bool{
        let implementsTypes = declaration.implementsTypes;
        if (implementsTypes) {
            for (let type of implementsTypes) {
                if (type.name.range.toString() == interfaceName) {
                    return true;
                }
            }
        }
        return false;

    }

    //check if the class has implemented the Serializable interface or not.
    static impledSerializable(prototype: ClassPrototype | null): bool{
        if (!prototype) {
            return false;
        }
        let impled = this.impledInterface(<ClassDeclaration>prototype.declaration, "Serializable");
        let parentImpled = this.impledSerializable(prototype.basePrototype);
        return impled || parentImpled;
    }

    static isString(typeName: string): bool{
        return typeName == "string" || typeName == "String";
    }


    static isArray(typeName: string): bool {
        return typeName == "[]" || typeName == "Array";
    }


    static isMap(typeName: string): bool {
        return typeName == "Map" || typeName == "ArrayMap";
    }

    static isArrayMap(typeName: string): bool {
        return "ArrayMap" == typeName;
    }
}

export enum AbiType{
    NUMBER,
    STRING,
    ARRAY,
    MAP,
    CLASS
}

export class TypeAnalyzer{
    parent: Element;
    typeNode: NamedTypeNode;
    typeName: string;
    abiType: AbiType;

    constructor(parent: Element, typeNode: NamedTypeNode) {
        this.parent = parent;
        this.typeNode = typeNode;
        this.typeName = typeNode.name.range.toString();
        this.abiType=this.getAbiType();
    }

    private getAbiType(): AbiType{
        if (AstUtil.isString(this.typeName)) {
            return AbiType.STRING;
        }
        if (AstUtil.isArray(this.typeName)) {
            return AbiType.ARRAY;
        }
        if (AstUtil.isMap(this.typeName)) {
            return AbiType.MAP;
        }
        let type = this.lookupElement(this.typeName);
        if (type&&type.kind==ElementKind.CLASS_PROTOTYPE) {
            return AbiType.CLASS;
        }
        return AbiType.NUMBER;
    }

    lookupElement(typeName: string): Element | null{
        return this.parent.lookup(typeName);
    }

    getAbiDeclareType(): string{
        let abiType = this.getAbiType();
        switch (abiType) {
            case AbiType.STRING: {
                return "string";
            }
            case AbiType.NUMBER:
            case AbiType.CLASS: {
                return this.typeName;
            }
            case AbiType.ARRAY: {
                return `${this.getArgs()[0]}[]`;
            }
            case AbiType.MAP: {
                if (AstUtil.isArrayMap(this.typeName)) {
                    return `${this.getArgs().join(",")}[]{}`;
                }else {
                    return `${this.getArgs().join(",")}{}`;    
                }
            }
            default: {
                return this.typeName;
            }
        }
    }

    private getArgs(): string[]{
        let args = this.typeNode.typeArguments;
        let argType = new Array<string>();
        if (args) {
            for (let arg of args) {
                argType.push(arg.range.toString());
            }
        }
        return argType;
    }

    getAsTypes(): string[]{
        let args = this.getArgs();
        if (args.length != 0) {
            return args;
        }
        return [this.typeName];
    }

    //find the source Abi Type
    findSourceAbiType(typeName: string): string{
        var abiType: string | null = AbiHelper.abiTypeLookup.get(typeName);
        if (abiType) {
            return abiType;
        }
        let element = this.lookupElement(typeName);
        if (element && element.kind == ElementKind.TYPEDEFINITION) {
            let typeDefine = <TypeDefinition>element;
            let aliasTypeName = typeDefine.typeNode.range.toString();
            return this.findSourceAbiType(aliasTypeName);
        }
        return typeName;
    }

    //find the source type (not abi!!!)
    findSourceAsType(typeName: string): string{
        let element = this.lookupElement(typeName);
        if (element && element.kind == ElementKind.TYPEDEFINITION) {
            let typeDefine = <TypeDefinition>element;
            let aliasTypeName = typeDefine.typeNode.range.toString();
            return this.findSourceAsType(aliasTypeName);
        }
        return typeName;
    }



    getArrayArgAbiType(): AbiType{
        let typeName = this.getArgs()[0];
        if (AstUtil.isString(typeName)) {
            return AbiType.STRING;
        }

        //find the sourceAsElement
        let sourceTypeName = this.findSourceAsType(typeName);
        let sourceType = this.lookupElement(sourceTypeName);
        if (sourceType != null && sourceType.kind == ElementKind.CLASS_PROTOTYPE) {
            return AbiType.CLASS;
        }
        return AbiType.NUMBER;
    }

    getArrayArgType(): string{
        return this.getArgs()[0];
    }
}