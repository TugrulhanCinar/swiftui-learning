//
//  DateTime+Constant.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 29.07.2022.
//
import Foundation

extension Date {

    func getCustomFormattedTime() -> String{
        return self.formatted(
            .dateTime
                .day().month(.wide).year()
                .hour().minute()
        )
    }
}
