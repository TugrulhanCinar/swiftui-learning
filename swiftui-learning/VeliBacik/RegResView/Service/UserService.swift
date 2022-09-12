//
//  UserService.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 1.08.2022.
//

import Foundation
import Alamofire

protocol IUserService {

    func fetchUser() async -> User?
}

struct UserService: IUserService {
    
    func fetchUser() async -> User? {

        let request = AF.request(ServicePath.users.toService()).serializingDecodable(User.self)
        let response = await request.response
        response.error?.showError()
        return response.value
    }
}


private enum ServicePath: String  {

    case users = "users"

    func toService() -> String {

        return "https://reqres.in/api/\(rawValue)"
    }
}
