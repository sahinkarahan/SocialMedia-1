//
//  User.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 26.12.2024.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
