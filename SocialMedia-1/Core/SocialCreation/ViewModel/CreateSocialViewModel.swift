//
//  CreateSocialViewModel.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 27.12.2024.
//

import Firebase
import FirebaseAuth

class CreateSocialViewModel: ObservableObject {
    func uploadSocial(caption: String) async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let social = Social(ownerUid: uid, caption: caption, timestamp: Timestamp(), likes: 0)
        try await SocialService.uploadSocial(social)
    }
    
}
