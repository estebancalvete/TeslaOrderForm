//
//  Palette+Color.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import SwiftUI
import Foundation

extension Color {
    static let baseCardinal = Color("cardinal")
    static let baseGray = Color("isabelline")
    static let baseDarkGray = Color("dark_gray")
    static let baseGreen = Color("medium_jungle_green")
    static let baseWhite = Color("white_smoke")
}

extension UIColor {
    static let baseCardinal = Color(named: "cardinal")
    static let baseGray = Color(named: "isabelline")
    static let baseDarkGray = Color(named: "dark_gray")
    static let baseGreen = Color(named: "medium_jungle_green")
    static let baseWhite = Color(named: "white_smoke")


    private static func Color(named key: String) -> UIColor {
       if let color = UIColor(named: key, in: .main, compatibleWith: nil) {
           return color
       }

       return .black
    }
}
