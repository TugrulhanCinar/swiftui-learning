//
//  MarketDetailView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 2.08.2022.
//

import SwiftUI

struct MarketDetailView: View {
    @StateObject private var marketDetailVM = MarketDetailViewModel()
    @EnvironmentObject var marketVM: MarketViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        VStack {
            TextField("Name", text: $marketDetailVM.name)
            TextField("Count", text: $marketDetailVM.count)
            Button("Save") {
                saveItem()
            }
        }
    }
}

extension MarketDetailView {

    private func saveItem() {

        guard let item = marketDetailVM.save() else { return }
        marketVM.addItem(item: item)
        presentationMode.wrappedValue.dismiss()
    }
}

struct MarketDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MarketDetailView()
    }
}

