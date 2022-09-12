//
//  MarketHomeView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 2.08.2022.
//

import SwiftUI

struct MarketHomeView: View {

    @StateObject private var marketViewModel = MarketViewModel()

    var body: some View {
        NavigationView {
            VStack{
                List(marketViewModel.items) { item in
                    Text(item.name)
                }
                NavigationLink(destination: MarketDetailView()) {
                    Text("Add item")
                }
            }
        }.environmentObject(marketViewModel)
    }
}

struct MarketHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MarketHomeView()
    }
}
