//
//  LoginView.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/13/21.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack{
            ScreenTitleSV("Hi,\nWelcome Back!")
            
            VStack(spacing: 15) {
                //Email input
                EmailTextFieldSV(email: $email)
                    .padding(.horizontal, 20)

                //Password input
                PasswordTextFieldSV(password: $password)
                    .padding(.horizontal, 20)

                //Login button
                Button(action: {}) {
                    Text("LOGIN")
                        .textStyle(GradientButtonStyle())
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
