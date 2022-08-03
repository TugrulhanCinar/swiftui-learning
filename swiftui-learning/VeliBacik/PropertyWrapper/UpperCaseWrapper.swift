//
//  UpperCaseWrapper.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import Foundation

@propertyWrapper struct UpperCaseWrapper {

    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
        }
    }

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
    }
}
