//
//  ContentView.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 25.12.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                SocialTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
