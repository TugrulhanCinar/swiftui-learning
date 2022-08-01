//
//  Logging+AFError.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 1.08.2022.
//

import Foundation
import Alamofire
import Logging

extension AFError {

    private static let logger = Logger(label: "")

    func showError() {

        AFError.logger.error("\(String(describing: errorDescription))")
    }
}
