//
//  OrderViewModel.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import Foundation
import SwiftUI
import Combine

class OrderViewModel: ObservableObject {
    
    // PLACEHOLDER DATA REMOVE
    let prototypeArray = Array(stride(from: 0, through: 10, by: 1))
    
    @Published var prototypeAmt = 1
    @Published var prototypeBoolean = true
    
    @Published var isOrderCompleteVisible = false
    @Published var isCancelOrderVisible = false
    @Published var isModalVisible = false
}
