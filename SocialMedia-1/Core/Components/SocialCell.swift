//
//  SocialCell.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 25.12.2024.
//

import SwiftUI

struct SocialCell: View {
    let social: Social
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView(user: social.user, size: .small)
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(social.user?.username ?? "")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text(social.timestamp.timestampString())
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))
                        
                        Button {
                            // code
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }
                    }
                
                    Text(social.caption)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    HStack(spacing: 16) {
                        Button {
                            // code
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            // code
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        
                        Button {
                            // code
                        } label: {
                            Image(systemName: "arrow.rectanglepath")
                        }
                        
                        Button {
                            // code
                        } label: {
                            Image(systemName: "paperplane")
                        }

                    }
                    .foregroundStyle(Color(.black))
                    .padding(.vertical, 8)
                    
                    
                    
                }
            }
            Divider()
        }
        .padding()
    }
}

#Preview {
    SocialCell(social: MockData.social)
}
