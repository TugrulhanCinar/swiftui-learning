//
//  LoginView.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 18.11.2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            ImageItems.Authentication.login.rawValue.image()
            Text(LocaleKeys.Login.welcomeBack.rawValue.locale())
                .font(.system(size: FontSizes.title1, weight: .semibold))
                .tint(.teflon)
            HTextIconField(hint: LocaleKeys.General.emailHint.rawValue.locale(), iconName: IconItems.mail)
            HTextSecureIconField(hint: LocaleKeys.General.passwordHint.rawValue.locale(), iconName: IconItems.lock)
                .padding(.top, PagePaddings.All.normal.rawValue)
            Divider()
            NormalButton(title: LocaleKeys.Login.createAccount.rawValue) {
            }.padding(.top, PagePaddings.All.normal.rawValue)

            Text(LocaleKeys.Login.terms.rawValue.locale()).environment(\.openURL, OpenURLAction(handler: { url in

                print(url)
                return .discarded
            })).padding(.top, PagePaddings.All.normal.rawValue)
                .font(.system(size: FontSizes.caption1, weight: .regular))
                .foregroundColor(.gandalf)
                .tint(.cornFlowerBlue)
                
            Spacer()
        }.padding(.all, PagePaddings.All.normal.rawValue)
    }
}

private struct HTextIconField: View {
    
    let hint: LocalizedStringKey
    let iconName: String
    
    var body: some View {
        HStack {
            iconName.image()
            TextField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}

private struct HTextSecureIconField: View {
    
    let hint: LocalizedStringKey
    let iconName: String
    
    var body: some View {
        HStack {
            iconName.image()
            SecureField(hint, text: .constant(""))
        }.modifier(TextFieldModifier())
    }
}

// MARK: - Preview
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environment(\.locale, .init(identifier: "tr"))

    }
}
