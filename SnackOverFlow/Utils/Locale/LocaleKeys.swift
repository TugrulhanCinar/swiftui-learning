//
//  LocaleKeys.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 16.11.2022.
//

import SwiftUI

struct LocaleKeys {
    
    enum Auth: String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInapple"
        case custom = "signUpWithEmail"
    }
    
    enum Buttons: String {
        case getStarted = "getStarted"
    }
    
    enum Login: String {
        case welcomeBack = "welcomeBack"
        case createAccount = "createAccount"
        case terms = "termsAndCondition"
    }
    
    enum General: String {
        case emailHint = "emailHint"
        case passwordHint = "passwordHint"
    }
}

extension String {
    
    /// It localize any string from  Localizable.string
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
