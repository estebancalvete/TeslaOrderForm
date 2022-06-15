//
//  BottomOrderView.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import SwiftUI

struct BottomOrderView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        Text("Bottom Order View")
    }
}

struct BottomOrderView_Previews: PreviewProvider {
    static var previews: some View {
        BottomOrderView()
    }
}
