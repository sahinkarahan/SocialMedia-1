//
//  Social.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 27.12.2024.
//

import Firebase
import FirebaseFirestore

struct Social: Identifiable, Codable {
    @DocumentID var socialId: String?
    let ownerUid: String
    let caption: String
    let timestamp: Timestamp
    let likes: Int
    
    var id: String {
        return socialId ?? NSUUID().uuidString
    }
    
    var user: User?
}
