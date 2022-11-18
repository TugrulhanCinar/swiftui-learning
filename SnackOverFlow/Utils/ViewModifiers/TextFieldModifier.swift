//
//  TextFieldModifier.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 18.11.2022.
//

import Foundation
import SwiftUI

struct TextFieldModifier: ViewModifier {

    func body(content: Content) -> some View {
        return content.padding()
            .overlay(RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 2))
            .foregroundColor(Color.karl)
    }
}
