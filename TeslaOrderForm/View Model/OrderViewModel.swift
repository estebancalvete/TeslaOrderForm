//
//  OrderViewModel.swift
//  TeslaOrderForm
//
//  Created by Esteban Calvete Iglesias on 15/6/22.
//

import Foundation
import SwiftUI
import Combine

class OrderViewModel: ObservableObject, Codable {
    
    @Published var rentalAmount = 0
    @Published var amountOfCars = 0
    @Published var location = 0
    @Published var returnLocation = 0
    @Published var pickupTime = 0
    @Published var specialDriver = true
    @Published var isOrderCompleteVisible = false
    @Published var isCancelOrderVisible = false
    @Published var isModalVisible = false
    let pickupTimes = Array(stride(from: 60, to: 480, by: 10))
    let rentalPeriods = Array(1..<5)
    let numberOfCars = Array(1..<4)
    let locations = [
        "MIA Inter. Airport",
        "Ft. Lauderdale Inter. Airport",
        "Palm Beach Inter. Airport"
    ]
    let returnLocations = [
        "MIA Inter. Airport",
        "Ft. Lauderdale Inter. Airport",
        "Palm Beach Inter. Airport"
    ]
    private let api = API()
    
    private var subscriptions = Set<AnyCancellable>()
    
    // MARK: - Codable
    
    init() {}
    //This enum is for encoding and decoding
    enum CodingKeys: String, CodingKey {
        case rentalAmount, amountOfCars, selectedDate, location, specialDriver, name, pickupTime
    }
    //Decode method:
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        rentalAmount = try values.decode(Int.self, forKey: .rentalAmount)
        amountOfCars = try values.decode(Int.self, forKey: .amountOfCars)
        location = try values.decode(Int.self, forKey: .location)
        pickupTime = try values.decode(Int.self, forKey: .pickupTime)
        specialDriver = try values.decode(Bool.self, forKey: .specialDriver)
    }
    //Encode method:
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(rentalAmount, forKey: .rentalAmount)
        try container.encode(amountOfCars, forKey: .amountOfCars)
        try container.encode(location, forKey: .location)
        try container.encode(pickupTime, forKey: .pickupTime)
        try container.encode(specialDriver, forKey: .specialDriver)
    }
    
    // MARK: - Send data method
    
    func sendOrder() {
        api.post(with: self)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { response in
                print(response)
                print("=================")
            }, receiveValue: { value in
                print("Received response from Combine publisher")
                print(value)
            })
            .store(in: &subscriptions)
    }
    
}
