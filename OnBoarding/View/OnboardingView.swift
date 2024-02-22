//
//  ContentView.swift
//  OnBoarding
//
//  Created by Sachin Shinde on 15/02/24.
//

import SwiftUI



struct OnboardingView: View {
    
    @State private var selectedPage = 0
    
    @StateObject var onboardingViewModel = OnboardingViewModel()
    
    @Binding var path : [Int]
    
    
    var body: some View {
        
        
        GeometryReader { geometry in
            
            VStack {
                
                TabView(selection: $selectedPage) {
                    
                    ForEach(Array(onboardingViewModel.onboardingViewsArr.enumerated()), id: \.offset) {index, onboardingData in
                        OnboardingRowView(onboardingData: onboardingData, width: geometry.size.width, height: geometry.size.height)
                            .tag(index)
                            .onTapGesture {
                                print("row tapped")
                            }
                    }
                }
                .background(.white)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .padding(.bottom, 30)
                
                
                AppButton(title: "Next", backgroundColor: Colors.themeColor, foregroundColor: .white, accessibilityHint: Strings.nextBtnAccessHint, onTap: {
                    if selectedPage < onboardingViewModel.onboardingViewsArr.count - 1 {
                        withAnimation { selectedPage += 1 }
                    }
                    else {
                        path.append(3)
                    }
                })
                
                AppButton(title: "Skip", backgroundColor: .white, foregroundColor: .black, accessibilityHint: Strings.skipBtnAccessHint, onTap: {
                    path.append(3)
                })
                
                
            }
            .onAppear{
                onboardingViewModel.getOnboardingData()
            }
            .navigationBarBackButtonHidden()
            
        }
        
    }
    
}

#Preview {
    OnboardingView(path: .constant([1]))
}
