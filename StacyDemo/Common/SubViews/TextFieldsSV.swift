//
//  TextFieldsSV.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/14/21.
//

import SwiftUI

struct EmailTextField: View {
    @Binding var email: String
    
    var body: some View {
        HStack {
            //Email icon
            Image(systemName: "envelope")
                .foregroundColor(Color.text.opacity(0.7))
            
            //Email textbox
            TextField("Email Address", text: $email)
            //Keyboard settings
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .disableAutocorrection(true)
        }
        .font(.title3)
        .padding(8)
        
        //Custom border
        .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.text.opacity(0.7), lineWidth: 1))
        .padding(.horizontal, 20)
    }
}

struct PasswordTextField: View {
    @Binding var password: String
    
    var body: some View {
        HStack {
            //Password icon
            Image(systemName: "key")
                .foregroundColor(Color.text.opacity(0.7))
            
            //Password textbox
            SecureField("Password", text: $password)
                .padding(.leading, 8)
        }
        .font(.title3)
        .padding(8)
        
        //Custom border
        .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.text.opacity(0.7), lineWidth: 1))
        .padding(.horizontal, 20)
    }
}