//
//  NavigationModel.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 24.05.2022.
//

import Foundation

struct NavigationUserModel: Identifiable {

    let id: UUID = UUID()
    let name: String
}

extension NavigationUserModel {

    /// samples navigation user model
    static let samples: [NavigationUserModel] = [
        NavigationUserModel(name: "T"),
        NavigationUserModel(name: "T1"),
        NavigationUserModel(name: "T2"),
        NavigationUserModel(name: "T3"),
        NavigationUserModel(name: "T4"),
        NavigationUserModel(name: "T5")
    ]
}
