//
//  ThemeButton.swift
//  OnBoarding
//
//  Created by Sachin Shinde on 21/02/24.
//

import SwiftUI

struct AppButton: View {

    var title: String = ""
    var backgroundColor: Color = Color.white
    var foregroundColor: Color = Color.gray
    var accessibilityHint: String = ""
    public let onTap: () -> Void

    public init(title: String, backgroundColor: Color, foregroundColor: Color, accessibilityHint: String, onTap: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.accessibilityHint = accessibilityHint
        self.onTap = onTap
    }

    public var body: some View {
        Button {
            onTap()
        } label: {
            Text(title)
                .font(.body)
                .padding(.horizontal, 100)
                .foregroundColor(foregroundColor)

        }
        .accessibilityHint(accessibilityHint)
        .padding(.vertical, 15)
        .background(backgroundColor)
        .clipShape(Capsule())
        .accessibilityIdentifier(title)
    }
}

#Preview {
    AppButton(title: "Save", backgroundColor: Color.white, foregroundColor: .white, accessibilityHint: "Button", onTap: {
        print("Save tapped")
    })
}
