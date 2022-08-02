//
//  MarketDetailViewModel.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 2.08.2022.
//

import Foundation

class MarketDetailViewModel: ObservableObject {

    @Published var name: String = ""
    @Published var count: String = ""

    func save() -> MarketItem? {

        guard !name.isEmpty, let value = Int(count) else { return nil }

        return MarketItem(name: name, price: value)
    }
}
