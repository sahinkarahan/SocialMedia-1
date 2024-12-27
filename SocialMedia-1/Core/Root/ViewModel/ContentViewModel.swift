//
//  ContentViewModel.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 26.12.2024.
//

import Foundation
import Combine
import Firebase
import FirebaseAuth


class ContentViewModel: ObservableObject {

    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
        
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
    }

}
