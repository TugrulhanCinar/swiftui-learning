//
//  PropertyWrapperView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import SwiftUI

struct PropertyWrapperView: View {

    @State var userWrapperModel: UserWrapperModel = UserWrapperModel(name: "v", lastName: "b", age: "5")
    var body: some View {
        VStack {
            Text(userWrapperModel.fullName)
                .font(.largeTitle)
            TextField("", text: $userWrapperModel.lastName)
            TextField("Number", text: $userWrapperModel.age)
        }
    }
}

struct PropertyWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperView()
    }
}
