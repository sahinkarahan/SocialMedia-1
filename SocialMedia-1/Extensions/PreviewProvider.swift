//
//  PreviewProvider.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 26.12.2024.
//


import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}



class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Şahin Karahan", email: "sahin@hotmail.com", username: "sahiniosdeveloper")
}

class MockData {
    
    static let user = User(id: NSUUID().uuidString, fullname: "Şahin Karahan", email: "sahin@hotmail.com", username: "sahiniosdeveloper")
    
    static let social = Social(ownerUid: "123", caption: "This is spartaa!!!!!", timestamp: Timestamp(), likes: 0)
    
}
