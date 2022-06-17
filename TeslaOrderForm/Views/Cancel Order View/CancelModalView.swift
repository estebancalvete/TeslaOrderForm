//
//  CancelModalView.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import SwiftUI

struct CancelModalView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            header
            buttons
        }
        .padding(.horizontal, 10)
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 190)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    var header: some View {
        HStack {
            VStack(alignment: .leading, spacing: -10) {
                Text("CANCEL ORDER?")
                    .custom(font: .bold, size: 30)
                Text("You'll return to the car details")
                    .custom(font: .ultralight, size: 22)
            }
            Spacer()
        }
    }
    
    var buttons: some View {
        HStack {
            Button(action: {
                self.order.isCancelOrderVisible.toggle()
            }) {
                Text("NO, KEEP IT")
            }
            .buttonStyle(TeslaButtonStyle())
            .background(Color.baseWhite)
            .cornerRadius(8)
            
            Spacer()
            
            Button(action: {
                self.order.isCancelOrderVisible.toggle()
                self.order.isOrderCompleteVisible.toggle()
            }) {
                Text("YES, CANCEL")
            }
            .buttonStyle(TeslaButtonStyle())
            .background(Color.baseCardinal)
            .cornerRadius(8)
            .foregroundColor(.white)
        }
    }
}

struct CancelModalView_Previews: PreviewProvider {
    static var previews: some View {
        CancelModalView()
            .previewLayout(.fixed(width: 380, height: 187))
    }
}
