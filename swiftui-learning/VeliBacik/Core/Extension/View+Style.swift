//
//  View+Style.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import Foundation
import SwiftUI

extension View {

    func titleStyle() -> some View {

        return self.modifier(AppTitle(shadow: .hight))
    }
}
