//
//  CustomTabView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 25.07.2022.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        VStack {
            Text("Hello world")
            TabView {
                Text("Tab Content 1").tabItem { Text("Tab Label 1") }.tag(1)
                Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(2)
            }
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
