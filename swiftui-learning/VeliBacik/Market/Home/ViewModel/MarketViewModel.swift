//
//  MarketViewModel.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 2.08.2022.
//

import Foundation


protocol MarketUses{

    func addItem(item: MarketItem)
    func remove(id: UUID) -> Bool
    var items: [MarketItem] {get set}
}


class MarketViewModel: ObservableObject {

    init(){

        items = MarketItem.items
    }

    @Published var items: [MarketItem]
}

// MARK: Market bussiness

extension MarketViewModel: MarketUses {

    func addItem(item: MarketItem) {

        items.append(item)
    }

    func remove(id: UUID) -> Bool {

        guard let index = items.firstIndex(where: { item in item.id == id}) else { return false }
        self.items.remove(at: index)
        return true
    }
}

