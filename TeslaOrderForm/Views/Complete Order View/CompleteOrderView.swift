//
//  CompleteOrderView.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import SwiftUI

struct CompleteOrderView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        ZStack {
            VStack {
                TopOrderView()
                    .padding(.top, 20)
                    .environmentObject(order)
                BottomOrderView()
                    .environmentObject(order)
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.horizontal)
        }
        CancelOrderView()
            .environmentObject(order)
            .opacity(order.isCancelOrderVisible ? 1 : 0)
            .animation(Animation.easeOut, value: 0)
    }
}

struct CompleteOrderView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteOrderView()
    }
}
