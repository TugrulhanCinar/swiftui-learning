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
}

extension String {
    
    /// It localize any string from  Localizable.string
    /// - Returns: Localized value
    func locale() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
