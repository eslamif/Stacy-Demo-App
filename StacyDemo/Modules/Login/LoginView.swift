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
            HStack {
                //Title
                Text("Hi, \nWelcome Back!")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.title)
                    .padding(.bottom, 30)
                    .padding(.leading, 20)
                Spacer()
            }
            
            VStack {
                //Email input
                TextField("Email Address", text: $email)
                    .font(.title3)
                    .padding(8)
                
                //Custom border
                    .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.text.opacity(0.7), lineWidth: 1))
                    .padding(.horizontal, 20)
                
                //Password input
                SecureField("Password", text: $password)
                    .font(.title3)
                    .padding(8)
                
                //Custom border
                    .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.text.opacity(0.7), lineWidth: 1))
                    .padding(.horizontal, 20)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
