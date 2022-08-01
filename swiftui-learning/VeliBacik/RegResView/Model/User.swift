//
//  User.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 1.08.2022.
//

import Foundation

// MARK: - User
struct User: Codable {
    let page: Int?
    let perPage: Int?
    let total: Int?
    let totalPages: Int?
    let data: [Datum]?
    let support: Support?

    enum CodingKeys: String, CodingKey {
        case page = "page"
        case perPage = "per_page"
        case total = "total"
        case totalPages = "total_pages"
        case data = "data"
        case support = "support"
    }
}

// MARK: - Datum
struct Datum: Codable, Identifiable {
    let id: Int?
    let email: String
    let firstName: String
    let lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case email = "email"
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar = "avatar"
    }
}

// MARK: - Support
struct Support: Codable {
    let url: String?
    let text: String?

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case text = "text"
    }
}
