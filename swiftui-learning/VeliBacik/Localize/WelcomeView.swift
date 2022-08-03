//
//  WelcomeView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        Text(LocaleKeys.welcome.rawValue)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environment(\.locale, .init(identifier: ProjectLanguage.tr.rawValue))
    }
}
