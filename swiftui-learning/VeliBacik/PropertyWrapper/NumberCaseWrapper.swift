//
//  NumberCaseWrapper.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import Foundation

@propertyWrapper struct NumberCaseWrapper {

    var wrappedValue: String {
        didSet {
            wrappedValue = self.calculateValue(value: wrappedValue)
        }
    }

    init(wrappedValue: String) {

        self.wrappedValue = wrappedValue
    }

    private func calculateValue(value: String) -> String {

        return Int(value)?.description ?? ""
    }
}
