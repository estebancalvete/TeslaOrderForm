//
//  ContentView.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        Text("Content View")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
