//
//  UserView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 1.08.2022.
//

import SwiftUI
import Kingfisher

struct UserView: View {
    @StateObject var userViewModel = UserViewModel(userService: UserService())

    var body: some View {

        if let user = userViewModel.user, let data = user.data{
            List(data) {
                UserExtractedView(datum: $0)
            }
        } else {
            LoadingView()
        }
    }
}

struct UserExtractedView: View {
    let datum: Datum

    var body: some View {
        HStack {
            KFImage(URL(string: datum.avatar))
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50, alignment: .center)
            Text(datum.firstName)
            Text(datum.lastName)
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
