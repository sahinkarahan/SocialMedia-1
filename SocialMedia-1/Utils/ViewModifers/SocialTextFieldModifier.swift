//
//  SocialTextFieldModifier.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 25.12.2024.
//

import Foundation
import SwiftUI



struct SocialTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(.rect(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}
