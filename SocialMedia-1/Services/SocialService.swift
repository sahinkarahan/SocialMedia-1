//
//  SocialService.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 27.12.2024.
//

import Foundation
import Firebase
import FirebaseFirestore

struct SocialService {
    
    static func uploadSocial(_ social: Social) async throws {
        guard let socialData = try? Firestore.Encoder().encode(social) else { return }
        try await Firestore.firestore().collection("socials").addDocument(data: socialData)
    }
    
    static func fetchSocials() async throws -> [Social] {
        let snapshot = try await Firestore
            .firestore()
            .collection("socials")
            .order(by: "timestamp", descending: true)
            .getDocuments()
        
        return snapshot.documents.compactMap({ try? $0.data(as: Social.self) })
    }
    
    static func fetchUserSocials(uid: String) async throws -> [Social] {
        let snapshot = try await Firestore
            .firestore()
            .collection("socials")
            .whereField("ownerUid", isEqualTo: uid)
            .getDocuments()
        
        let socials = snapshot.documents.compactMap({ try? $0.data(as: Social.self) })
        return socials.sorted(by: { $0.timestamp.dateValue() > $1.timestamp.dateValue() })
    }
    
}
