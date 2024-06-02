//
//  GradientText.swift
//  SwiftUIAdvancedDesignLevel
//
//  Created by KazbekMusaev on 02.06.2024.
//

import SwiftUI

struct GradientText: View {
    let text: String
    var body: some View {
        Text(text)
            .gradientForeground([
                Color("pink-gradient-1"),
                Color("pink-gradient-2")])
    }
}

extension View {
    public func gradientForeground(_ colors: [Color]) -> some View {
        self
            .overlay {
                LinearGradient(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
            }
            .mask(self)
    }
}
