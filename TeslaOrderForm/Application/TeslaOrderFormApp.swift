//
//  TeslaOrderFormApp.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import SwiftUI

@main
struct TeslaOrderFormApp: App {
    @StateObject private var order = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
