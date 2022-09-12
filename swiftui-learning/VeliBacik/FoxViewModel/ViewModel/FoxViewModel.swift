//
//  FoxViewModel.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 1.08.2022.
//

import Foundation

class FoxViewModel: ObservableObject {

    init(service: IFoxService) {
        self.service = service
        fetchFox()
    }

    @Published var fox: FoxModel?
    @Published var isCompleted: Bool?

    let service: IFoxService


    func fetchFox() {

        service.fetchItem(path: .floof) { data, isCompleted in
            self.isCompleted = isCompleted
            self.fox = data
        }
    }

    func refreshView() {
        isCompleted = false
        fetchFox()
    }
}
