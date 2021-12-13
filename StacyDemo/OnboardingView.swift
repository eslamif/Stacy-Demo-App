//
//  OnboardingView.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/12/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            Text("Find Places to Live")
                .font(.title)
                .foregroundColor(.primary)
                .bold()
                .padding()
            
            Text("Find great verified places & people to share a home with.")
                .font(.body)
                .foregroundColor(.primary)
                .padding(.horizontal, 15)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}