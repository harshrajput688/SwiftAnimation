//
//  ColorExtensions.swift
//  SwiftAnimation
//
//  Created by Harsh Rajput on 14/05/25.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String){
        self.init(UIColor(hex: hex))
    }
    
    static func randomColor() -> Color {
        return Color(UIColor.random())
    }
}

extension UIColor{
    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        var rgb: UInt64 = 0
        
        
        var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 1
        
        let length = hexSanitized.count
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        if length == 6{
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255
            b = CGFloat(rgb & 0x0000FF) / 255
        }else if length == 8{
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255
            a = CGFloat(rgb & 0x000000FF) / 255
        }
        self.init(red: r, green: g, blue: b, alpha: a)
    }
}

extension CGFloat{
    static func random() -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor{
    static func random() -> UIColor{
        return UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1)
    }
}
