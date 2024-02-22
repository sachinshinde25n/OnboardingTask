//
//  OnboardingDataModel.swift
//  OnBoarding
//
//  Created by Sachin Shinde on 22/02/24.
//

import Foundation
import UIKit

struct OnboardingDataModel: Identifiable, Hashable {
    var id = UUID()
    let image: UIImage
    let title: String
    let description: String
}
