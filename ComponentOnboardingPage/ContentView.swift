//
//  ContentView.swift
//  ComponentOnboardingPage
//
//  Created by Iqbal Alhadad on 06/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showOnBoarding: Bool = true
    var body: some View {
        NavigationStack {
            List {
                
            }
            .navigationTitle("Apple Games")
        }
        .sheet(isPresented: $showOnBoarding){
            AppleOnBoarding(tint: .red, title: "Welcome to Apple Games"){
                //app icon
                Image(systemName: "gamecontroller.fill")
                    .font(.system(size:50))
                    .frame(width: 100,height: 100)
                    .foregroundStyle(.white)
                    .background(.red.gradient, in: .rect(cornerRadius: 25))
                    .frame(height: 180)
            } cards: {
                //Cards
                AppleOnBoardingCard(
                    symbol: "list.bullet",
                    title: "See Whats New, Just For You",
                    subtitle: "Explore what's happening in your games and what to play next."
                )
                
                AppleOnBoardingCard(
                    symbol: "person.2",
                    title: "Play and complete with Friends",
                    subtitle: "Challenge Friends, see what they're playing, and play together."
                )
                
                AppleOnBoardingCard(
                    symbol: "square.stack",
                    title: "All Your Games in One Place",
                    subtitle: "Access your full game library from Apple Store and Apple Arcade."
                )
                
            } footer: {
                VStack(alignment: .leading, spacing: 6){
                    Image(systemName: "person.3.fill")
                        .foregroundStyle(.red)
                    
                    Text("Your gameplay information, including what you play and your game activity is used to improve Game Center")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
                .padding(.vertical, 15)
            } onContinue: {
               showOnBoarding = false
                print("Close Sheet")
            }
        }
    }
    
}

#Preview {
    ContentView()
}
