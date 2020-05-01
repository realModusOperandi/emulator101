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
        gameCode = try Data(contentsOf: URL(fileURLWithPath: "/Users/liam/Projects/Xcode/emulator/emulator/invaders/invaders.h"))
    } catch {
        print("Error opening game file: \(error)")
    }

    guard let code = gameCode else {
        exit(1)
    }

    for var i in 0..<code.count {
        let bytes = disassembleOp(from: code, at: i)
        i += bytes - 1
    }
}

func genCases() {
    for i in 0x12...0xff {
        print("    case 0x\(String(format: "%02x", i)):")
        print("        print(\"NOI    \\(String(format: \"%02x\", code[0]))\")")
    }
}

disassembler()
