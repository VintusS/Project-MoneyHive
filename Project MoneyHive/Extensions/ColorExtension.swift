//
//  ColorExtension.swift
//  Project MoneyHive
//
//  Created by Dragomir Mindrescu on 23.03.2024.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0xFF00) >> 8) / 255.0
        let b = Double(rgbValue & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
