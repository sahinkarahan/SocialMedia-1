//
//  UserContentListViewModel.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 27.12.2024.
//

import Foundation


class UserContentListViewModel: ObservableObject {
    @Published var socials = [Social]()
    
    let user: User
    
    init(user: User) {
        self.user = user
        Task { try await fetchUserSocials() }
        
    }
    
    @MainActor
    func fetchUserSocials() async throws {
       var socials = try await SocialService.fetchUserSocials(uid: user.id)
    
        for i in 0 ..< socials.count {
            socials[i].user = self.user
        }
        self.socials = socials
    }
}
