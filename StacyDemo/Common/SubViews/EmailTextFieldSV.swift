//
//  EmailTextFieldSV.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/14/21.
//

import SwiftUI

struct EmailTextFieldSV: View {
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

struct EmailTextFieldSV_Previews: PreviewProvider {
    static var previews: some View {
        EmailTextFieldSV(email: .constant(""))
    }
}
