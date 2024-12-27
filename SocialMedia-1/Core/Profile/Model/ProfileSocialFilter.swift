//
//  ProfileSocialFilter.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 26.12.2024.
//

import Foundation

enum ProfileSocialFilter: Int, CaseIterable, Identifiable {
    case socials
    case replies
    
    
    var title: String {
        switch self {
        case .socials: return "Socials"
        case .replies: return "Replies"
            
        }
    }
    
    var id: Int { return self.rawValue }
    
}
