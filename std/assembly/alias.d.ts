import { DataStream } from "./datastream"

declare class Bytes extends Uint8Array{ 
    static fromHexToBytes(hex: string): Bytes;
    static fromU8ArrayToBytes(arr: Array<u8>): Bytes;
    toHex(): string;
    swapEndian(): Bytes;
    cloneBytes(): Bytes;
    toU8Array(): Array<u8>;
    concat(b2: Bytes): Bytes;
    wrapDataStream(): DataStream;
}
