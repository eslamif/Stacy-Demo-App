//
//  OnboardingView.swift
//  StacyDemo
//
//  Created by Frank Eslami on 12/12/21.
//

import SwiftUI

struct OnboardingView: View {
    @State private var showLoginView: Bool = false
    @State private var shouldAnimateLoginButton: Bool = false
    @State private var shouldAnimateTopView: Bool = false
    
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
            .padding(.top, 25)
            .padding(.bottom, 20)
            
            //For animation
            .offset(x: shouldAnimateTopView ? 0 : 400)
            
            //Get started button
            Button(action: {}) {
                Text("GET STARTED")
                    .textStyle(GradientButtonStyle())
            }
            //For animation
            .offset(x: shouldAnimateTopView ? 0 : -400)
            
            
            //Login button
            Button(action: { showLoginView.toggle() }) {
                Text("Login")
                    .padding()
                    .foregroundColor(Color.text)
                    .opacity(shouldAnimateLoginButton ? 1 : 0)
            }
        }
        .fullScreenCover(isPresented: $showLoginView) {
            LoginView()
        }
        .onAppear {
            animateTopView()
            animateLoginButton()
        }
    }
    
    //Animations
    func animateLoginButton() {
        withAnimation(.linear(duration: 2)) {
            shouldAnimateLoginButton = true
        }
    }
    
    func animateTopView() {
        //Create bounce animation
        withAnimation(Animation.interpolatingSpring(stiffness: 40, damping: 8)) {
            shouldAnimateTopView = true
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
