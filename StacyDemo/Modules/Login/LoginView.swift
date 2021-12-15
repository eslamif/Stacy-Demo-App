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
            
            VStack {
                //Email input
                EmailTextFieldSV(email: $email)
                
                //Password input
                PasswordTextFieldSV(password: $password)
                
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
