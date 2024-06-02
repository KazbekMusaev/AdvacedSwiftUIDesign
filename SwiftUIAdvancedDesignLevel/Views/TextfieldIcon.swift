//
//  TextfieldIcon.swift
//  SwiftUIAdvancedDesignLevel
//
//  Created by KazbekMusaev on 02.06.2024.
//

import SwiftUI

struct TextfieldIcon: View {
    @Binding var currentlyEditing: Bool
    
    var body: some View {
        ZStack {
            VisualEffectBlur(blurStyle: .dark) {
                Color.init(.tertiaryBackground)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .opacity(0.8)
                    .blur(radius: 3.0)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .overlay {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.white, lineWidth: 1.0)
                    .blendMode(.overlay)
                Image(systemName: "key")
                    .gradientForeground([
                        Color.init(.pinkGradient1),
                        Color.init(.pinkGradient2)
                    ])
                    .font(.system(size: 17, weight: .medium))
            }
        }
    }
}

#Preview {
    TextfieldIcon(currentlyEditing: .constant(false))
}
