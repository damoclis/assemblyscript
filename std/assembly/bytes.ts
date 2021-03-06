import { DataStream } from "./datastream"

export class Bytes extends Uint8Array implements Serializable {
    static fromHex(hex: string): Bytes {
        if (hex.substring(0, 2) == "0x") {
            hex = hex.substring(2);
        }

        //if the length%2!=0  add a '0' in the first position
        if (hex.length % 2 != 0) {
            hex = "0" + hex;
        }

        let len = hex.length / 2;
        let bytes = new Bytes(len);
        for (let i = 0; i < len; i++) {
            let str = hex.substring(i * 2, i * 2 + 2);
            bytes[i] = (u8)(parseInt(str, 16))
        }
        return bytes
    }

    static fromU8Array(arr: Array<u8>): Bytes {
        let bytes = new Bytes(arr.length);
        for (let i = 0; i < arr.length; i++) {
            bytes[i] = arr[i]
        }
        return bytes;
    }

    static fromString(str: string): Bytes {
        const bytes = new Bytes(str.length)
        const buffer = String.UTF8.encode(str)

        memory.copy(changetype<usize>(bytes.buffer), changetype<usize>(buffer), buffer.byteLength);
        return bytes;
    }

    toHex(): string {
        let b = this;
        let hexTable = "0123456789abcdef".split('');
        let hex = "";
        for (let i = 0; i < b.length; i++) {
            let byte: u8 = b[i];
            hex += hexTable[byte >> 4]
            hex += hexTable[byte & 0x0f]
        }
        return "0x" + hex;
    }


    swapEndian(): Bytes {
        let clone = this.cloneBytes();
        return <Bytes>(clone.reverse());
    }

    cloneBytes(): Bytes {
        let bytes = this;
        let clone = new Bytes(bytes.length);
        for (let i = 0; i < bytes.length; i++) {
            clone[i] = bytes[i]
        }
        return clone;
    }

    toU8Array(): Array<u8> {
        let bytes = this;
        const arr = new Array<u8>(bytes.length)
        for (let i = 0; i < bytes.length; i++) {
            arr[i] = bytes[i];
        }
        return arr;
    }

    // Concat two different bytes and returns a new bytes.
    concat(b2: Bytes): Bytes {
        let b1 = this;
        const newBytes = new Array<u8>();
        for (let i = 0; i < b1.length; i++) {
            newBytes.push(b1[i])
        }
        for (let i = 0; i < b2.length; i++) {
            newBytes.push(b2[i])
        }
        return Bytes.fromU8Array(newBytes);
    }

    wrapDataStream(): DataStream {
        let bytes = new Bytes(this.length);
        let ds = new DataStream(changetype<usize>(bytes.buffer), this.length);
        ds.writeVector<u8>(this.toU8Array());
        return ds;
    }

    toString(): string {
        let bytes = this;
        return String.UTF8.decode(bytes.buffer);
    }

    serialize(ds: DataStream): void {
        let b = this;
        ds.writeVarint32(b.length);
        for (var i = 0; i < b.length; i++) {
            ds.write<u8>(b[i])
        };
    }

    //Not used 
    deserialize(ds: DataStream): void {

    }

    key(): string {
        return "";
    }

    get bytes(): Bytes {
        return this;
    }

}
