//
//  FeedView.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 25.12.2024.
//

import SwiftUI

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(viewModel.socials) { social in
                        SocialCell(social: social)
                    }
                }
            }
            .refreshable {
                Task { try await viewModel.fetchSocials() }
            }
            .navigationTitle("Social")
            .navigationBarTitleDisplayMode(.inline)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    //code
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundStyle(Color(.black))
                }
            }

        }
    }
}

#Preview {
    NavigationStack {
        FeedView()
    }
}
