//
//  ProfileView.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 25.12.2024.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    

    var body: some View {
            ScrollView(showsIndicators: false) {
                // bio and stats
                VStack(spacing: 20) {
                    
                    ProfileHeaderView(user: user)
                    
                    Button {
                        // code
                    } label: {
                        Text("Follow")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.white))
                            .frame(width: 352,height: 32)
                            .background(.black)
                            .clipShape(.rect(cornerRadius: 8))
                    }
                    
                    // user content list view
                    UserContentListView(user: user)

                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .padding(.horizontal)
    }
}

#Preview {
    ProfileView(user: MockData.user)
}
