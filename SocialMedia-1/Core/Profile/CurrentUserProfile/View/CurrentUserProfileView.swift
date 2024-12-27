//
//  CurrentUserProfileView.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 26.12.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    @StateObject var viewModel = CurrentUserProfileViewModel()
    @State private var showEditProfile = false
    
    
    
    private var currentUser: User? {
        return viewModel.currentUser
    }
    
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                // bio and stats
                VStack(spacing: 20) {
                    
                    ProfileHeaderView(user: currentUser)

                    Button {
                        showEditProfile.toggle()
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.black))
                            .frame(width: 352,height: 32)
                            .background(.white)
                            .clipShape(.rect(cornerRadius: 8))
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(.systemGray4), lineWidth: 1)
                            }
                    }
                    
                    // user content list view
                    if let user = currentUser {
                        UserContentListView(user: user)
                    }

                }
            }
            .sheet(isPresented: $showEditProfile, content: {
                if let user = currentUser {
                    EditProfileView(user: user)
                }
            })
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                    
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
