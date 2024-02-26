//
//  OnBoardingRowView.swift
//  OnBoarding
//
//  Created by Sachin Shinde on 15/02/24.
//

import SwiftUI

struct OnboardingRowView: View {

    var onboardingData: OnboardingDataModel
    var width: CGFloat
    var height: CGFloat

    var body: some View {

        ScrollView {
            VStack {
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .foregroundStyle(.white)
                        .frame(width: width, height: height * 0.4)

                    Image(uiImage: onboardingData.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        // .frame(width: width * 0.7, height: height * 0.4, alignment: .top)
                        .frame(height: height * 0.4, alignment: .top)
                        .padding(.horizontal, 50)
                        .clipped()
                        .accessibilityHidden(true)

                    Rectangle()
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white]),
                                           startPoint: .top,
                                           endPoint: .bottom))
                        .frame(height: 150)
                }
                .padding(.leading, 30)
                .padding(.top, 30)

                VStack(alignment: .center, spacing: 15) {

                    Text(onboardingData.title)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .accessibilityLabel(onboardingData.title)

                    Text(onboardingData.description)
                        .font(.body)
                        .foregroundStyle(.gray)
                }
                .padding(.top, 50)
                .padding(.horizontal, 20)
                .multilineTextAlignment(.center)

            }
            .frame(width: width)

        }
        .padding(.bottom, 50)
    }
}

#Preview {

    let title = "Quick actions directly from the powerful smart search"
    let description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the"
    
    return OnboardingRowView(onboardingData: OnboardingDataModel(image: UIImage(named: "Onboarding_1")!, title: title, description: description), width: 350, height: 800)
}
