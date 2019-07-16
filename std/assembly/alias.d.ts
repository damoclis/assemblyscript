declare class Bytes extends Uint8Array{ 
    static HexToBytes(hex: string): Bytes;
    static U8ArrayToBytes(arr: Array<u8>): Bytes;
    Hex(): string;
    SwapEndian(): Bytes;
    CloneBytes(): Bytes;
    BytesToU8Array(): Array<u8>;
    ConcatBytes(b2: Bytes): Bytes;
    WrapDataStream(): DataStream;
}
