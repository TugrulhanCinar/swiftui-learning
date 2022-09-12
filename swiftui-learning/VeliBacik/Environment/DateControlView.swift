//
//  DateControlView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 29.07.2022.
//

import SwiftUI

struct DateControlView: View {

    @EnvironmentObject var userController: UserController

    var body: some View {
        VStack {
            Text(userController.currentDate.getCustomFormattedTime())
            Button("Date Reset") {
                userController.currentDate = Date.now
            }
        }
    }
}

struct DateControlView_Previews: PreviewProvider {
    static var previews: some View {
        DateControlView()
    }
}
