//
//  OnBoardViewModel.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 28.11.2022.
//

import Foundation

class OnboardViewModel: ObservableObject {
    
    @Published var currentIndex: Int = 0
    @Published var isHomeRedirect: Bool = false
    
    private let cache = UserDefaultCache()
    
    private func isUserFirstLogin() -> Bool {
        
        return cache.read(key: .onboard).isEmpty
    }
    
    func checkUserFirstTime() {
        
        removeCacheFirstLogin()
        guard !isUserFirstLogin() else {
            updateCacheFirstLogin()
            return
        }
        redirectToHome()
    }
    
    func saveUserLoginAndRedirect() {
        
        updateCacheFirstLogin()
        redirectToHome()
    }
    
    private func updateCacheFirstLogin() {
        
        cache.save(key: .onboard, value: UserCacheKeys.dummyValue)
    }
        
    private func redirectToHome() {
        
        isHomeRedirect = true
    }
    
    private func removeCacheFirstLogin() {
        
        cache.remove(key: .onboard)
    }
}
