//
//  TeslaButtonStyle.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import SwiftUI

struct TeslaButtonStyle: ButtonStyle {

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(height: 64)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.horizontal, 20)
            .custom(font: .bold, size: 21)
            .buttonStyle(PlainButtonStyle())
    }
}
