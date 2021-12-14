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
        VStack {
            Image(onboardingItem.imageName)
                .resizable()
                .frame(height: 400)
                .frame(maxWidth: .infinity)
            
            Text(onboardingItem.title)
                .font(.title)
                .foregroundColor(Color("title"))
                .bold()
                .padding()
            
            Text(onboardingItem.description)
                .font(.body)
                .foregroundColor(Color("text"))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 15)
        }
    }
}
