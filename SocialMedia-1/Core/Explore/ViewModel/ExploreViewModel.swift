//
//  ExploreViewModel.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 26.12.2024.
//

import Foundation


class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchUsers() }
    }
    
    @MainActor
    private func fetchUsers() async throws {
        self.users = try await UserService.fetchUsers()
    }
}
