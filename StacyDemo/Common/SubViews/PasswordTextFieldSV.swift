//
//  PasswordTextFieldSV.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/14/21.
//

import SwiftUI

struct PasswordTextFieldSV: View {
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

struct PasswordTextFieldSV_Previews: PreviewProvider {
    static var previews: some View {
        PasswordTextFieldSV(password: .constant(""))
    }
}
