//
//  HelloView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import SwiftUI

struct HelloView: View {

    var body: some View {
        VStack {
            Spacer()
            Text("Hello world")
                .bold()
                .modifier(AppTitle(shadow: .normal))

            Spacer()
            Text("Hello world")
                .bold()
                .titleStyle()
            Spacer()

        }
    }
}

struct AppTitle: ViewModifier {

    let shadow: Shadows

    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .shadow(radius: shadow.rawValue)
    }
}


struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}

enum Shadows: Double {

    case normal = 2.0
    case hight = 10.0
}
