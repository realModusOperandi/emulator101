//
//  main.swift
//  emulator
//
//  Created by Liam Westby on 4/28/20.
//  Copyright © 2020 me. All rights reserved.
//

import Foundation

func disassembler() {
    var gameCode: Data?
    do {
        gameCode = try Data(contentsOf: URL(fileURLWithPath: "/Users/liam/Projects/emulator101/emulator/invaders/invaders.h"))
    } catch {
        print("Error opening game file: \(error)")
    }

    guard let code = gameCode else {
        exit(1)
    }

    var i = 0
    while i < code.count {
        let bytes = disassembleOp(from: code, at: i)
        i += bytes
    }
}

func genCases() {
    for i in 0x12...0xff {
        print("    case 0x\(String(format: "%02x", i)):")
        print("        print(\"NOI    \\(String(format: \"%02x\", code[0]))\")")
    }
}

func genMov() {
    let registers = ["B", "C", "D", "E", "H", "L", "M", "A"]
    var instr = 0x40
    
    for i in registers {
        for j in registers {
            var result = ""
            if instr == 0x76 {
                result = """
                            case 0x\(String(format: "%02x", instr)):
                                print("HLT")
                """
            } else {
                result = """
                            case 0x\(String(format: "%02x", instr)):
                                print("MOV    \(i),\(j)")
                """
            }
            instr += 1
            print(result)
        }
    }
}

func genMath() {
    let operations = ["ADD", "ADC", "SUB", "SBB", "ANA", "XRA", "ORA", "CMP"]
    let registers = ["B", "C", "D", "E", "H", "L", "M", "A"]
    var instr = 0x80
    
    for i in operations {
        for j in registers {
            var result = ""
            result = """
                            case 0x\(String(format: "%02x", instr)):
                                print("\(i)    \(j)")
            """
            instr += 1
            print(result)
        }
    }
}

disassembler()
