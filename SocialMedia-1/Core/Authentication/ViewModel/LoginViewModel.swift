//
//  LoginViewModel.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 26.12.2024.
//

import Foundation
import Combine


class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""

    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
