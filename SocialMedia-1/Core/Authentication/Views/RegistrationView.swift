//
//  RegistrationView.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 25.12.2024.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("logo-1")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 120)
                .padding()
            //.saturation(0)
            
            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .textInputAutocapitalization(.none)
                    .modifier(SocialTextFieldModifier())
                
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(SocialTextFieldModifier())
                
                TextField("Enter your full name", text: $viewModel.fullname)
                    .modifier(SocialTextFieldModifier())
                
                TextField("Enter your username", text: $viewModel.username)
                    .textInputAutocapitalization(.none)
                    .modifier(SocialTextFieldModifier())
            }
            
            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 8))
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)

        }
    }
}

#Preview {
    RegistrationView()
}
