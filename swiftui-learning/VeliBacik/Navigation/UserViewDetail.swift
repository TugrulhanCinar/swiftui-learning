//
//  UserViewDetail.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 24.05.2022.
//

import SwiftUI

struct UserViewDetail: View {

    let user: NavigationUserModel

    var body: some View {
        Text(user.name).font(.largeTitle)
    }
}

struct UserViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserViewDetail(user: NavigationUserModel.samples.first!)
    }
}
