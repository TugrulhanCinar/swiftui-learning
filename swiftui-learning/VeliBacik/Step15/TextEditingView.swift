//
//  TextEditingView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import SwiftUI

struct TextEditingView: View {

    @State private var editorValue: String = "🤣"

    var body: some View {
        VStack {
            TextEditor(text: $editorValue)
                .lineLimit(3) // TODO: Çalışmıyor neden çalışmadığını bul @TUGRULHAN
                .padding()
                .background(.green)
        }
    }
}

struct TextEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditingView()
    }
}
