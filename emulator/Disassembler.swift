//
//  Disassembler.swift
//  emulator
//
//  Created by Liam Westby on 4/28/20.
//  Copyright © 2020 me. All rights reserved.
//

import Foundation

func disassembleOp(from codes: Data, at counter: Int) -> Int {
    let code = codes.advanced(by: counter)
    var opBytes = 1;
    print(String(format: "%04x ", counter), terminator: "")
    switch code[0] {
    case 0x00:
        print("NOP")
    case 0x01:
        print("LXI    B,\(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0x02:
        print("STAX   B")
    case 0x03:
        print("INX    B")
    case 0x04:
        print("INR    B")
    case 0x05:
        print("DCR    B")
    case 0x06:
        print("MVI    B,\(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0x07:
        print("RLC")
    case 0x08:
        print("NOP")
    case 0x09:
        print("DAD    B")
    case 0x0a:
        print("LDAX   B")
    case 0x0b:
        print("DCX    B")
    case 0x0c:
        print("INR    C")
    case 0x0d:
        print("DCR    C")
    case 0x0e:
        print("MVI    C,\(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0x0f:
        print("RRC")
    case 0x10:
        print("NOP")
    case 0x11:
        print("LXI    D,\(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0x12:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x13:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x14:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x15:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x16:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x17:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x18:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x19:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x1a:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x1b:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x1c:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x1d:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x1e:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x1f:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x20:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x21:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x22:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x23:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x24:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x25:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x26:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x27:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x28:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x29:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x2a:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x2b:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x2c:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x2d:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x2e:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x2f:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x30:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x31:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x32:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x33:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x34:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x35:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x36:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x37:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x38:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x39:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x3a:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x3b:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x3c:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x3d:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x3e:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x3f:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x40:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x41:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x42:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x43:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x44:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x45:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x46:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x47:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x48:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x49:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x4a:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x4b:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x4c:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x4d:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x4e:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x4f:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x50:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x51:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x52:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x53:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x54:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x55:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x56:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x57:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x58:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x59:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x5a:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x5b:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x5c:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x5d:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x5e:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x5f:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x60:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x61:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x62:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x63:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x64:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x65:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x66:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x67:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x68:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x69:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x6a:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x6b:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x6c:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x6d:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x6e:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x6f:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x70:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x71:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x72:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x73:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x74:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x75:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x76:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x77:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x78:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x79:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x7a:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x7b:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x7c:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x7d:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x7e:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x7f:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x80:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x81:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x82:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x83:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x84:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x85:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x86:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x87:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x88:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x89:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x8a:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x8b:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x8c:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x8d:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x8e:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x8f:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x90:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x91:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x92:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x93:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x94:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x95:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x96:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x97:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x98:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x99:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x9a:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x9b:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x9c:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x9d:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x9e:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0x9f:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa0:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa1:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa2:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa3:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa4:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa5:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa6:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa7:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa8:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xa9:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xaa:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xab:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xac:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xad:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xae:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xaf:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb0:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb1:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb2:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb3:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb4:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb5:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb6:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb7:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb8:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xb9:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xba:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xbb:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xbc:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xbd:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xbe:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xbf:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc0:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc1:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc2:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc3:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc4:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc5:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc6:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc7:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc8:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xc9:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xca:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xcb:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xcc:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xcd:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xce:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xcf:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd0:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd1:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd2:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd3:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd4:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd5:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd6:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd7:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd8:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xd9:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xda:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xdb:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xdc:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xdd:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xde:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xdf:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe0:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe1:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe2:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe3:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe4:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe5:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe6:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe7:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe8:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xe9:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xea:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xeb:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xec:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xed:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xee:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xef:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf0:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf1:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf2:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf3:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf4:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf5:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf6:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf7:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf8:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xf9:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xfa:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xfb:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xfc:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xfd:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xfe:
        print("NOI    \(String(format: "%02x", code[0]))")
    case 0xff:
        print("NOI    \(String(format: "%02x", code[0]))")
    default:
        print("UNK    \(String(format: "%02x", code[0]))")
    }
    
    return opBytes
}
