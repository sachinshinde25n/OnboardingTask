//
//  DashboardView.swift
//  OnBoarding
//
//  Created by Sachin Shinde on 19/02/24.
//

import SwiftUI

struct DashboardView: View {

    @Binding var path: [Int]
    var body: some View {
        Text("Dashboard")
    }
   // .navigationBarBackButtonHidden()
}

#Preview {
    DashboardView(path: .constant([1]))
}
