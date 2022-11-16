//
//  WelcomeView.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 26.10.2022.
//

import SwiftUI

enum StringItem: String {
    
    case facebookLogin = "Sign In with Facebook"
}

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image(Images.juice.rawValue)
                .resizable()
                .statusBarHidden(true)
            Color.black.opacity(0.3)
            BodyView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .ignoresSafeArea(.all)
    }
}

private struct BodyView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                Image(Icons.appLogo.rawValue)
                Spacer()
                FacebookButton() {
                    
                }
                    .padding(.top, PagePaddings.Horizontal.normal.rawValue)
                GoogleButton { }
                AppleButton { }
                Divider()
                    .background(Color.peach)
                    .frame(
                        width: geometry.dh(width: 0.6),
                        height: DividerViewSize.normal).padding(.horizontal, PagePaddings.Horizontal.normal.rawValue
                                                                
                        )
                EmailButton { }
                Spacer().frame(height: geometry.dh(height: 0.1))
            }
                .padding(.paddingAll)
        }
        
    }
}


