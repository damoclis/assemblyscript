declare class Bytes extends Uint8Array{ 
    static Hex(b: Bytes): string;
    static HexToBytes(hex: string): Bytes;
    static SwapEndian(bytes: Bytes): Bytes;
    static U8ArrayToBytes(arr: Array<u8>): Bytes;
    static CloneBytes(bytes: Bytes): Bytes;
    static BytesToU8Array(bytes: Bytes): Array<u8>;
    static ConcatBytes(b1: Bytes, b2: Bytes): Bytes;
    static CreateDataStream(size: u32): DataStream;
    static WrapDataStream(bytes: Bytes): DataStream;
}
