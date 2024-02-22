//
//  HomeScreen.swift
//  OnBoarding
//
//  Created by Sachin Shinde on 15/02/24.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var path = [Int]()
    
    var body: some View {
        
        NavigationStack (path: $path) {
            VStack (spacing: 20){
                Text("Welcome to the")
                    .accessibilityIdentifier("Home_Screen_Header")
                Text("Employee App")
                    .font(.title)
                    .accessibilityIdentifier("Home_Screen_Title")
            }
            .multilineTextAlignment(.center)
            .padding(20)
                        
            NavigationLink (value: 2) {
                Text("Start")
                    .fontWeight(.bold)
                    .padding(40)
                    .foregroundStyle(.white)
                    .background(Colors.themeColor)
                    .clipShape(Circle())
                    //.accessibilityIdentifier("Home_Screen_Start_Button")
            }
            .accessibilityIdentifier("Start OnBoarding")
            //.accessibilityValue("Tap here to go to Onboarding screen")
            .padding(.top, 40)
            
            .navigationDestination(for: Int.self) { number in
                
                switch number {
                case 2:
                    OnboardingView(path: $path)
                        .accessibilityIdentifier("OnBoarding_Screen")
                case 3:
                    DashboardView(path: $path)
                        .accessibilityIdentifier("Dashboard_Screen")
                
                default:
                    HomeScreen()
                }
            }
        }
       
    }
}

#Preview {
    HomeScreen()
}
