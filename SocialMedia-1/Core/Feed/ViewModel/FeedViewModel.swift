//
//  FeedViewModel.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 27.12.2024.
//

import Foundation

@MainActor
class FeedViewModel: ObservableObject {
    @Published var socials = [Social]()
    
    init() {
        Task { try await fetchSocials() }
    }
    
    func fetchSocials() async throws {
        self.socials = try await SocialService.fetchSocials()
        try await fetchUserDataForSocials()
    }
    
    
    private func fetchUserDataForSocials() async throws {
        for i in 0 ..< socials.count {
            let social = socials[i]
            let ownerUid = social.ownerUid
            let socialUser = try await UserService.fetchUser(withUid: ownerUid)
            
            socials[i].user = socialUser
        }
    }
}
