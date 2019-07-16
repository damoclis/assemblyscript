import { DataStream } from "./datastream"

export class Bytes extends Uint8Array{ 
        static Hex(b: Bytes): string {
        let hexTable = "0123456789abcdef".split('');
        let hex = "";
        let rb = this.SwapEndian(b)
        for (let i = 0; i < rb.length; i++) {
          let byte: u8 = rb[i];
          hex += hexTable[byte >> 4]
          hex += hexTable[byte & 0x0f]
        }
        return "0x" + hex;
      }
      
        static HexToBytes(hex: string): Bytes {
        if (hex.substr(0, 2) == "0x") {
          hex = hex.substr(2);
        }
      
        let len = hex.length % 2 == 0 ? hex.length / 2 : hex.length / 2 + 1
        let bytes = new Bytes(len);
        let i = 0;
        while (hex.length) {
          let shex = hex.substr(hex.length - 2, hex.length);
          bytes[i++] = parseInt(shex, 16);
          hex = hex.substr(0, hex.length - 2);
        }
      
        return bytes
      }
      
    static SwapEndian(bytes: Bytes): Bytes {
        let clone = Bytes.CloneBytes(bytes);
        return clone.reverse()
      }
      
    static U8ArrayToBytes(arr: Array<u8>): Bytes {
        let bytes = new Bytes(arr.length);
        for (let i = 0; i < arr.length; i++) {
          bytes[i] = arr[i]
        }
        return bytes;
      }
      
    static CloneBytes(bytes: Bytes): Bytes {
        let clone = new Bytes(bytes.length);
        for (let i = 0; i < bytes.length; i++) {
          clone[i] = bytes[i]
        }
        return clone;
      }
      
    static BytesToU8Array(bytes: Bytes): Array<u8> {
        const arr = new Array<u8>(bytes.length)
        for (let i = 0; i < bytes.length; i++) {
          arr[i] = bytes[i];
        }
        return arr;
      }
      
      // Concat two different bytes and returns a new bytes.
    static ConcatBytes(b1: Bytes, b2: Bytes): Bytes {
        const newBytes = new Array<u8>();
        for (let i = 0; i < b1.length; i++) {
          newBytes.push(b1[i])
        }
        for (let i = 0; i < b2.length; i++) {
          newBytes.push(b2[i])
        }
        return this.U8ArrayToBytes(newBytes);
      }
      
    static CreateDataStream(size: u32): DataStream {
        const bytes = new Bytes(size);
        return new DataStream(changetype<usize>(bytes.buffer), size);
      }
      
      /**
       * Wrap a bytes into a datastream.
       * 
       * @param bytes 
       */
    static WrapDataStream(bytes: Bytes): DataStream {
        const ds = this.CreateDataStream(bytes.length);
        ds.writeVector<u8>(this.BytesToU8Array(bytes));
        return ds;
      }
}
