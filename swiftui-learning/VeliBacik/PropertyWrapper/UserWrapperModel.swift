//
//  UserWrapperModel.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import Foundation

// Lastname is always bigger
struct UserWrapperModel {
    var name: String
    @UpperCaseWrapper var lastName: String
    @NumberCaseWrapper var age: String

    var fullName: String {
        return "\(name) \(lastName) \(age)"
    }
    
}
