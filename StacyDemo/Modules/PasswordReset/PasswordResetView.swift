//
//  PasswordResetView.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/14/21.
//

import SwiftUI

struct PasswordResetView: View {
    @State private var email: String = ""
    
    var body: some View {
        VStack {
            ScreenTitleSV("Forgot Password?")
            
            HStack {
                Text("Enter your email in order to reset your password.")
                    .foregroundColor(.text)
                    .padding(.horizontal, 20)
                
                Spacer()
            }
            
            EmailTextFieldSV(email: $email)
                .padding(20)
            
            Button(action: {}) {
                Text("Reset Password")
                    .textStyle(GradientButtonStyle())
            }
            Spacer()
        }
    }
}

struct PasswordResetView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordResetView()
    }
}
