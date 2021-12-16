//
//  PasswordResetView.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/14/21.
//

import SwiftUI

struct PasswordResetView: View {
    //Bind presentation mode to navigate to previous view in stack
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var email: String = ""
    @State private var showEmailSentAlert: Bool = false
    
    var body: some View {
        VStack {
            ScreenTitleSV("Forgot Password?")
            
            HStack {
                Text("Enter your email in order to reset your password.")
                    .foregroundColor(.text)
                    .padding(.horizontal, 20)
                
                Spacer()
            }
            
            //Email input
            EmailTextFieldSV(email: $email)
                .padding(20)
            
            //Submit button
            Button(action: { showEmailSentAlert.toggle() }) {
                Text("Reset Password")
                    .textStyle(GradientButtonStyle())
            }
            Spacer()
        }
        //Email sent alert
        .alert(isPresented: $showEmailSentAlert) {
            emailSentAlert()
        }
    }
    
    func emailSentAlert() -> Alert {
        Alert(title: Text("Email Sent!"),
              message: Text("An email has been sent to you with instructions on how to reset your password."),
              dismissButton: .default(Text("Got It!"),
                                      action: {
            //Navigate back to previous view on stack
            presentationMode.wrappedValue.dismiss()
        }))
    }
}

struct PasswordResetView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordResetView()
    }
}
