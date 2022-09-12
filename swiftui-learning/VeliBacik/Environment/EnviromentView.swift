//
//  EnviromentView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 29.07.2022.
//

import SwiftUI

struct EnviromentView: View {

    @Environment(\.verticalSizeClass) var verticalSize

    @StateObject var userController = UserController()

    var body: some View {
        NavigationView {
            VStack {
                Text(userController.currentDate.getCustomFormattedTime())
                HStack {
                    verticalSize == .regular ? Spacer.minVerticalHigh : Spacer.minVertical
                    DatePicker(selection: $userController.currentDate, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                    verticalSize == .regular ? Spacer.minVerticalHigh : Spacer.minVertical            }
                NavigationLink {
                    DateControlView()
                } label: {
                    Text("Normal view")
                }
            }

        }.environmentObject(userController)
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EnviromentView()
            EnviromentView().previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

class UserController: ObservableObject {

    @Published var currentDate: Date = Date()

}

