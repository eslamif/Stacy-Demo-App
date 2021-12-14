//
//  OnboardingView.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/12/21.
//

import SwiftUI

struct OnboardingView: View {
    var onBoardingData: [OnboardingItem] = [
        OnboardingItem(imageName: "onb_find_place", title: "Find Places to Live", description: "Find great verified places & people to share a home with."),
        OnboardingItem(imageName: "onb_match", title: "Match Your Preferences", description: "Tell us your preferences and match with the right people."),
        OnboardingItem(imageName: "onb_like", title: "Like-Minded People", description: "Live together with people who will inspire like you.")
    ]
    
    var body: some View {
        VStack {
            TabView {
                ForEach(0 ..< onBoardingData.count) { index in
                    let item = onBoardingData[index]
                    OnboardingCard(onboardingItem: item)
                }
            }
            //Tab view style
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            //Get started button
            Button(action: {}) {
                Text("GET STARTED")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [.gradientStart, .gradientEnd]), startPoint: .leading, endPoint: .trailing))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
            }
            
            //Login button
            Button(action: { print("button clicked") }) {
                Text("Login")
                    .padding()
                    .foregroundColor(Color.text)
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewInterfaceOrientation(.portrait)
    }
}

fileprivate struct OnboardingCard: View {
    let onboardingItem: OnboardingItem
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Image(onboardingItem.imageName)
                    .resizable()
                    .frame(height: geometry.size.height * 0.7)
                    .frame(maxWidth: .infinity)
                
                Text(onboardingItem.title)
                    .font(.title)
                    .foregroundColor(.title)
                    .bold()
                    .padding()
                
                Text(onboardingItem.description)
                    .font(.body)
                    .foregroundColor(.text)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 15)
            }
        }
    }
}
