//
//  LoginView.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/13/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                ScreenTitleSV("Hi,\nWelcome Back!")
                
                VStack(spacing: 15) {
                    //Email input
                    EmailTextFieldSV(email: $email)
                        .padding(.horizontal, 20)
                    
                    //Password input
                    PasswordTextFieldSV(password: $password)
                        .padding(.horizontal, 20)
                    
                    HStack {
                        Spacer()
                        
                        //Forgot password link
                        NavigationLink("Forgot Password?") {
                            PasswordResetView()
                        }
                        .foregroundColor(Color.text)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        .padding(.horizontal, 20)
                    }
                    
                    //Login button
                    Button(action: {}) {
                        Text("LOGIN")
                            .textStyle(GradientButtonStyle())
                    }
                    
                    Spacer()
                    
                    //Register
                    HStack {
                        Text("Don't have an account?")
                        NavigationLink("Sign Up") {
                            RegisterView()
                        }
                    }
                    .padding(.bottom, 20)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
