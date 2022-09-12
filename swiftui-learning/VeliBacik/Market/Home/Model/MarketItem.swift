//
//  MarketItem.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 2.08.2022.
//

import Foundation

struct MarketItem: Identifiable {

    let id: UUID = UUID()
    let name: String
    var price: Int


    /// Değiştirilebileceğini göstermek için mutating tag ini ekledik.
    mutating func updatePrice(value: Int?) {
        guard let value = value else { return }
        self.price = value
    }
}

extension MarketItem {

    static let items = [
        MarketItem(name: "V1", price: 15),
        MarketItem(name: "V2", price: 30),
        MarketItem(name: "V3", price: 45)
    ]
}
