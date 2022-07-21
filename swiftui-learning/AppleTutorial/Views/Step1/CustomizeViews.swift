//
//  CustomizeViews.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 21.07.2022.
//

import SwiftUI

struct CustomizeViews: View {

    var body: some View {
        VStack {
            vStack()
            labelledDivider()
            hStack()
            labelledDivider()
            hStack2()
        }

    }

    fileprivate func labelledDivider() -> some View {

        return LabelledDivider(label: "or", horizontalPadding: 5, color: .red)
    }

    fileprivate func hStack() -> some View {

        return HStack {
            Text("Hello, World!")
                .font(.title)
                .foregroundColor(.cyan)
                .multilineTextAlignment(.leading)
            Text("Merhaba, dünya")
                .font(.subheadline)
                .foregroundColor(.cyan)
                .multilineTextAlignment(.leading)
        }
    }

    fileprivate func hStack2() -> some View {

        return HStack {
            Text("Hello, World!")
                .font(.title)
                .foregroundColor(.cyan)
                .multilineTextAlignment(.leading)
            Spacer()
            Text("Merhaba, dünya")
                .font(.subheadline)
                .foregroundColor(.cyan)
                .multilineTextAlignment(.leading)
        }
    }


    fileprivate func vStack() -> some View {

        return VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.title)
                .foregroundColor(.cyan)
                .multilineTextAlignment(.leading)
            Text("Merhaba, dünya")
                .font(.subheadline)
                .foregroundColor(.cyan)
                .multilineTextAlignment(.leading)
        }
    }
}

struct CustomizeViews_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeViews()
    }
}
