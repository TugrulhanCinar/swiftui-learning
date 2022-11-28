//
//  UserCacheItems.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 28.11.2022.
//

import Foundation

enum UserCacheKeys: String{
    
    case onboard = "onboard"
    
    static let dummyValue = "save_onboard"
}


protocol UserCacheProtocol {
    
    func read(key: UserCacheKeys) -> String
    func save(key: UserCacheKeys, value: String)
    func remove(key: UserCacheKeys) //Bool döndürürsen iyi oldu
}

struct UserDefaultCache: UserCacheProtocol { }

extension UserCacheProtocol {
    
    /// Read user data
    /// - Parameter key: cache item key
    /// - Returns: cached value or empty
    func read(key: UserCacheKeys) -> String {
        
        // userdefault kullanmak istemiyorum.
        guard let value = UserDefaults.standard.value(forKey: key.rawValue) as? String else { return "" }
        return value
    }
    
    /// Save user data
    /// - Parameter key: cache item key
    /// - Returns: whatever user value as a string
    func save(key: UserCacheKeys, value: String) {
        
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    /// Remove cache item
    /// - Parameter key: cache item key
    func remove(key: UserCacheKeys) {
        
        UserDefaults.standard.removeObject(forKey: key.rawValue
        )
    }
}



