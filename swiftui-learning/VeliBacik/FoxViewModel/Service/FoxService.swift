//
//  FoxService.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 1.08.2022.
//

import Foundation
import Alamofire

// floof/

protocol IFoxService {

    func fetchItem(path: FoxPaths, onSuccess: @escaping (FoxModel, Bool) -> Void)
}

fileprivate let _baseUrl: String = "https://randomfox.ca/"


class FoxService: IFoxService {


    func fetchItem(path: FoxPaths, onSuccess: @escaping  (FoxModel, Bool) -> Void) {

        AF.request(path.getFullPath()).responseDecodable(of: FoxModel.self) { response in

            guard let value = response.value else { return }
            onSuccess(value, true)
        }
    }
}



enum FoxPaths: String {

    

    case floof = "floof"

    func getFullPath() -> URL? {

        return URL(string: _baseUrl + self.rawValue)
    }

    func getFullPath() -> String {

        return _baseUrl + self.rawValue
    }
}
