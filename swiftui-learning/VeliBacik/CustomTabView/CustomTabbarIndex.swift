//
//  CustomTabbarIndex.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 28.07.2022.
//

import Foundation

enum CustomTabs: Int {
    case home = 0
    case heart = 1
    case navigation = 2

    var title: String {
        get {
            switch self {
            case .home: return "Home"
            case .heart: return  "Heart"
            case .navigation: return "Örnek"
            }
        }
    }

}
