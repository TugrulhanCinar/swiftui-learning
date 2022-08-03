//
//  LabelView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        VStack {
            Label("Heart", systemImage: Hearts.heartCircle.rawValue)
                .labelStyle(DefaultLabelStyle())
            Label("Heart", systemImage: Hearts.heartCircle.rawValue)
                .labelStyle(IconOnlyLabelStyle())
            Label("Heart", systemImage: Hearts.heartSuitFill.rawValue)
                .labelStyle(TitleOnlyLabelStyle())
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}


enum Hearts: String {

    case heartCircle = "heart.circle"
    case heartSuit = "suit.heart"
    case heartSuitFill = "suit.heart.fill"
}
