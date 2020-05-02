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
        print("STAX   D")
    case 0x13:
        print("INX    D")
    case 0x14:
        print("INR    D")
    case 0x15:
        print("DCR    D")
    case 0x16:
        print("MVI    D,\(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0x17:
        print("RAL")
    case 0x18:
        print("NOP")
    case 0x19:
        print("DAD    D")
    case 0x1a:
        print("LDAX   D")
    case 0x1b:
        print("DCX    D")
    case 0x1c:
        print("INR    E")
    case 0x1d:
        print("DCR    E")
    case 0x1e:
        print("MVI    E,\(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0x1f:
        print("RAR")
    case 0x20:
        print("NOP")
    case 0x21:
        print("LXI    H,\(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0x22:
        print("SHLD   \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0x23:
        print("INX    H")
    case 0x24:
        print("INR    H")
    case 0x25:
        print("DCR    H")
    case 0x26:
        print("MVI    H,\(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0x27:
        print("DAA")
    case 0x28:
        print("NOP")
    case 0x29:
        print("DAD    H")
    case 0x2a:
        print("LHLD   \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0x2b:
        print("DCX    H")
    case 0x2c:
        print("INR    L")
    case 0x2d:
        print("DCR    L")
    case 0x2e:
        print("MVI    L,\(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0x2f:
        print("CMA")
    case 0x30:
        print("NOP")
    case 0x31:
        print("LXI    SP,\(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0x32:
        print("STA    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0x33:
        print("INX    SP")
    case 0x34:
        print("INR    M")
    case 0x35:
        print("DCR    M")
    case 0x36:
        print("MVI    M,\(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0x37:
        print("STC")
    case 0x38:
        print("NOP")
    case 0x39:
        print("DAD    SP")
    case 0x3a:
        print("LDA    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0x3b:
        print("DCX    SP")
    case 0x3c:
        print("INR    A")
    case 0x3d:
        print("DCR    A")
    case 0x3e:
        print("MVI    A,\(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0x3f:
        print("CMC")
    case 0x40:
        print("MOV    B,B")
    case 0x41:
        print("MOV    B,C")
    case 0x42:
        print("MOV    B,D")
    case 0x43:
        print("MOV    B,E")
    case 0x44:
        print("MOV    B,H")
    case 0x45:
        print("MOV    B,L")
    case 0x46:
        print("MOV    B,M")
    case 0x47:
        print("MOV    B,A")
    case 0x48:
        print("MOV    C,B")
    case 0x49:
        print("MOV    C,C")
    case 0x4a:
        print("MOV    C,D")
    case 0x4b:
        print("MOV    C,E")
    case 0x4c:
        print("MOV    C,H")
    case 0x4d:
        print("MOV    C,L")
    case 0x4e:
        print("MOV    C,M")
    case 0x4f:
        print("MOV    C,A")
    case 0x50:
        print("MOV    D,B")
    case 0x51:
        print("MOV    D,C")
    case 0x52:
        print("MOV    D,D")
    case 0x53:
        print("MOV    D,E")
    case 0x54:
        print("MOV    D,H")
    case 0x55:
        print("MOV    D,L")
    case 0x56:
        print("MOV    D,M")
    case 0x57:
        print("MOV    D,A")
    case 0x58:
        print("MOV    E,B")
    case 0x59:
        print("MOV    E,C")
    case 0x5a:
        print("MOV    E,D")
    case 0x5b:
        print("MOV    E,E")
    case 0x5c:
        print("MOV    E,H")
    case 0x5d:
        print("MOV    E,L")
    case 0x5e:
        print("MOV    E,M")
    case 0x5f:
        print("MOV    E,A")
    case 0x60:
        print("MOV    H,B")
    case 0x61:
        print("MOV    H,C")
    case 0x62:
        print("MOV    H,D")
    case 0x63:
        print("MOV    H,E")
    case 0x64:
        print("MOV    H,H")
    case 0x65:
        print("MOV    H,L")
    case 0x66:
        print("MOV    H,M")
    case 0x67:
        print("MOV    H,A")
    case 0x68:
        print("MOV    L,B")
    case 0x69:
        print("MOV    L,C")
    case 0x6a:
        print("MOV    L,D")
    case 0x6b:
        print("MOV    L,E")
    case 0x6c:
        print("MOV    L,H")
    case 0x6d:
        print("MOV    L,L")
    case 0x6e:
        print("MOV    L,M")
    case 0x6f:
        print("MOV    L,A")
    case 0x70:
        print("MOV    M,B")
    case 0x71:
        print("MOV    M,C")
    case 0x72:
        print("MOV    M,D")
    case 0x73:
        print("MOV    M,E")
    case 0x74:
        print("MOV    M,H")
    case 0x75:
        print("MOV    M,L")
    case 0x76:
        print("HLT")
    case 0x77:
        print("MOV    M,A")
    case 0x78:
        print("MOV    A,B")
    case 0x79:
        print("MOV    A,C")
    case 0x7a:
        print("MOV    A,D")
    case 0x7b:
        print("MOV    A,E")
    case 0x7c:
        print("MOV    A,H")
    case 0x7d:
        print("MOV    A,L")
    case 0x7e:
        print("MOV    A,M")
    case 0x7f:
        print("MOV    A,A")
    case 0x80:
        print("ADD    B")
    case 0x81:
        print("ADD    C")
    case 0x82:
        print("ADD    D")
    case 0x83:
        print("ADD    E")
    case 0x84:
        print("ADD    H")
    case 0x85:
        print("ADD    L")
    case 0x86:
        print("ADD    M")
    case 0x87:
        print("ADD    A")
    case 0x88:
        print("ADC    B")
    case 0x89:
        print("ADC    C")
    case 0x8a:
        print("ADC    D")
    case 0x8b:
        print("ADC    E")
    case 0x8c:
        print("ADC    H")
    case 0x8d:
        print("ADC    L")
    case 0x8e:
        print("ADC    M")
    case 0x8f:
        print("ADC    A")
    case 0x90:
        print("SUB    B")
    case 0x91:
        print("SUB    C")
    case 0x92:
        print("SUB    D")
    case 0x93:
        print("SUB    E")
    case 0x94:
        print("SUB    H")
    case 0x95:
        print("SUB    L")
    case 0x96:
        print("SUB    M")
    case 0x97:
        print("SUB    A")
    case 0x98:
        print("SBB    B")
    case 0x99:
        print("SBB    C")
    case 0x9a:
        print("SBB    D")
    case 0x9b:
        print("SBB    E")
    case 0x9c:
        print("SBB    H")
    case 0x9d:
        print("SBB    L")
    case 0x9e:
        print("SBB    M")
    case 0x9f:
        print("SBB    A")
    case 0xa0:
        print("ANA    B")
    case 0xa1:
        print("ANA    C")
    case 0xa2:
        print("ANA    D")
    case 0xa3:
        print("ANA    E")
    case 0xa4:
        print("ANA    H")
    case 0xa5:
        print("ANA    L")
    case 0xa6:
        print("ANA    M")
    case 0xa7:
        print("ANA    A")
    case 0xa8:
        print("XRA    B")
    case 0xa9:
        print("XRA    C")
    case 0xaa:
        print("XRA    D")
    case 0xab:
        print("XRA    E")
    case 0xac:
        print("XRA    H")
    case 0xad:
        print("XRA    L")
    case 0xae:
        print("XRA    M")
    case 0xaf:
        print("XRA    A")
    case 0xb0:
        print("ORA    B")
    case 0xb1:
        print("ORA    C")
    case 0xb2:
        print("ORA    D")
    case 0xb3:
        print("ORA    E")
    case 0xb4:
        print("ORA    H")
    case 0xb5:
        print("ORA    L")
    case 0xb6:
        print("ORA    M")
    case 0xb7:
        print("ORA    A")
    case 0xb8:
        print("CMP    B")
    case 0xb9:
        print("CMP    C")
    case 0xba:
        print("CMP    D")
    case 0xbb:
        print("CMP    E")
    case 0xbc:
        print("CMP    H")
    case 0xbd:
        print("CMP    L")
    case 0xbe:
        print("CMP    M")
    case 0xbf:
        print("CMP    A")
    case 0xc0:
        print("RNZ")
    case 0xc1:
        print("POP    B")
    case 0xc2:
        print("JNZ    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xc3:
        print("JMP    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xc4:
        print("CNZ    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xc5:
        print("PUSH   B")
    case 0xc6:
        print("ADI    \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xc7:
        print("RST    0")
    case 0xc8:
        print("RZ")
    case 0xc9:
        print("RET")
    case 0xca:
        print("JZ     \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xcb:
        print("NOP")
    case 0xcc:
        print("CZ     \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xcd:
        print("CALL   \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xce:
        print("ACI    \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xcf:
        print("RST    1")
    case 0xd0:
        print("RNC")
    case 0xd1:
        print("POP    D")
    case 0xd2:
        print("JNC    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xd3:
        print("OUT    \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xd4:
        print("CNC    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xd5:
        print("PUSH   D")
    case 0xd6:
        print("SUI    \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xd7:
        print("RST    2")
    case 0xd8:
        print("RC")
    case 0xd9:
        print("NOP")
    case 0xda:
        print("JC    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xdb:
        print("IN     \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xdc:
        print("CC    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xdd:
        print("NOP")
    case 0xde:
        print("SBI    \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xdf:
        print("RST    3")
    case 0xe0:
        print("RPO    1")
    case 0xe1:
        print("POP    H")
    case 0xe2:
        print("JPO    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xe3:
        print("XTHL")
    case 0xe4:
        print("CPO    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xe5:
        print("PUSH   H")
    case 0xe6:
        print("ANI    \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xe7:
        print("RST    4")
    case 0xe8:
        print("RPE")
    case 0xe9:
        print("PCHL")
    case 0xea:
        print("JPE    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xeb:
        print("NOP")
    case 0xec:
        print("CPE    \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xed:
        print("NOP")
    case 0xee:
        print("XRI    \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xef:
        print("RST    5")
    case 0xf0:
        print("RP")
    case 0xf1:
        print("POP    PSW")
    case 0xf2:
        print("JP     \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xf3:
        print("DI")
    case 0xf4:
        print("CP     \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xf5:
        print("PUSH   PSW")
    case 0xf6:
        print("ORI    \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xf7:
        print("RST    6")
    case 0xf8:
        print("RM")
    case 0xf9:
        print("SPHL")
    case 0xfa:
        print("JM     \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xfb:
        print("EI")
    case 0xfc:
        print("CM     \(String(format: "#$%02x%02x", code[2], code[1]))")
        opBytes = 3
    case 0xfd:
        print("NOP")
    case 0xfe:
        print("CPI    \(String(format: "#$%02x", code[1]))")
        opBytes = 2
    case 0xff:
        print("RST    7")
    default:
        print("UNK    \(String(format: "%02x", code[0]))")
    }
    
    return opBytes
}
