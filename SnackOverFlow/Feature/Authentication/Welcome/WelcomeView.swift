//
//  WelcomeView.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 26.10.2022.
//

import SwiftUI

private enum StringItem: String {
    
    case facebookLogin = "Sign In with Facebook"
}

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(Images.juice.rawValue)
                .resizable()
                .statusBarHidden(true)
            Color.black.opacity(0.3)
            VStack {
                Image(Icons.appLogo.rawValue)
                FacebookButton() {
                    
                }
                    .padding(.top, 40)
            }
            .padding(.paddingAll)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
