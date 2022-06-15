//
//  TopOrderView.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import SwiftUI

struct TopOrderView: View {
    @EnvironmentObject var order: OrderViewModel
    
    var body: some View {
        Text("Top Order View")
    }
}

struct TopOrderView_Previews: PreviewProvider {
    static var previews: some View {
        TopOrderView()
    }
}
