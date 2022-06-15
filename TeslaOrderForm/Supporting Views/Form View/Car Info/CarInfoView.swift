//
//  CarInfoView.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import SwiftUI

struct CarInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            CarInfoBasicView()
            CarInfoDetailView()
            CarInfoPhotosView()
            Spacer()
        }
        .frame(height: 320)
        .padding(.horizontal, 20)
    }
}

struct CarInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoView()
            .previewLayout(.fixed(width: 400, height: 350))
    }
}
