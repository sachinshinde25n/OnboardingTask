//
//  CropImage.swift
//  OnBoarding
//
//  Created by Sachin Shinde on 19/02/24.
//

import SwiftUI

struct CropImage: View {
    var body: some View {
        
        GeometryReader { geometry in
                Image("Onboarding_1")
                    .resizable()
                    
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .top)
                    .background(.green)
                    //.padding(.horizontal, 30)
                    //.clipped()
           
        }
    }
}

#Preview {
    CropImage()
}
