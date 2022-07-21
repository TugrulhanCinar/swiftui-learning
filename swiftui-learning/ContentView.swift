//
//  ContentView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 24.05.2022.
//

import SwiftUI

struct IconFieldView: View {

    var iconName: String = "Hello"
    @State var textFieldValue: String = ""

    var body: some View {
        VStack {
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: $textFieldValue)
            Text(textFieldValue)
                .font(.largeTitle)
            Image(systemName: textFieldValue.lowercased()).frame(width: 100, height: 100, alignment: .center)
        }
    }
}

struct ContentView: View {

    var body: some View {
        SampleViews()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
