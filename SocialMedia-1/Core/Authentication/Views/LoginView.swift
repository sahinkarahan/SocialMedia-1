//
//  LoginView.swift
//  SocialMedia-1
//
//  Created by Şahin Karahan on 25.12.2024.
//

import SwiftUI

struct LoginView: View {
    
   
    @StateObject var viewModel = LoginViewModel()
    
    
    var body: some View {
        NavigationStack {
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
                }
                
                NavigationLink {
                    Text("Forgot password")
                } label: {
                    Text("Forgot password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
 
                Button {
                    Task { try await viewModel.login() }
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .clipShape(.rect(cornerRadius: 8))
                }
                
                Spacer()

                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
