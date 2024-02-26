//
//  OnBoardingViewModel.swift
//  OnBoarding
//
//  Created by Sachin Shinde on 19/02/24.
//

import Foundation
import UIKit

class OnboardingViewModel: ObservableObject {

    @Published var onboardingViewsArr: [OnboardingDataModel] = []

    func getOnboardingData() {
        let descText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the"

        onboardingViewsArr = [
            OnboardingDataModel(image: UIImage(named: "Onboarding_1")!, title: "Your all new Employee App", description: descText),
            OnboardingDataModel(image: UIImage(named: "Onboarding_2")!, title: "Quick actions directly from the powerful smart search", description: descText),
            OnboardingDataModel(image: UIImage(named: "Onboarding_3")!, title: "Quick actions directly from the powerful smart search", description: descText)
        ]
    }
}
