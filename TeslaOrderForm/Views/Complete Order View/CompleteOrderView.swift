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
}

struct CompleteOrderView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteOrderView()
    }
}
