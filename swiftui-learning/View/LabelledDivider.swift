//
//  LabelledDivider.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 21.07.2022.
//

import SwiftUI

struct LabelledDivider: View {
    let label: String
    let horizontalPadding: CGFloat
    let color: Color

    init(label: String, horizontalPadding: CGFloat, color: Color) {

        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }

    var body: some View {
        HStack {
            line
            Text(label).foregroundColor(color)
            line
        }
    }

    var line: some View {
        VStack{Divider().background(color).padding(horizontalPadding)}
    }
}

