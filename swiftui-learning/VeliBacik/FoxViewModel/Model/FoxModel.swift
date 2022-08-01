//
//  FoxModel.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 1.08.2022.
//


import Foundation

// MARK: - Fox

struct FoxModel: Codable {
    let image: String?
    let link: String?

    enum CodingKeys: String, CodingKey {
        case image = "image"
        case link = "link"
    }
}

