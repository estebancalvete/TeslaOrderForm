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
        ZStack {
            NavigationView {
                ScrollView(.vertical) {
                    VStack(spacing: 0) {
                        CarDetailView()
                            .frame(height: 600)
                        FormView()
                            .environmentObject(order)
                            .frame(height: 570)
                    }
                    .padding(.top, 40)
                }
                .hideNavigationBar()
            }
            CompleteOrderView()
                .opacity(order.isOrderCompleteVisible ? 1 : 0)
                .animation(Animation.easeOut, value: 0)
                .padding(.bottom, 20)
                .environmentObject(order)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
