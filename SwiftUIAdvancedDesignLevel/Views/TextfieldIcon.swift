//
//  TextfieldIcon.swift
//  SwiftUIAdvancedDesignLevel
//
//  Created by KazbekMusaev on 02.06.2024.
//

import SwiftUI

struct TextfieldIcon: View {
    let iconName: String
    @Binding var currentlyEditing: Bool
    let gradient1: [Color] = [
        Color.init(red: 101/255, green: 134/255, blue: 1),
        Color.init(red: 1, green: 64/255, blue: 80/255),
        Color.init(red: 109/255, green: 1, blue: 185/255),
        Color.init(red: 39/255, green: 232/255, blue: 1)
    ]
    @State private var colorAngle: Double = 0.0
    
    var body: some View {
        ZStack {
            VisualEffectBlur(blurStyle: .dark) {
                ZStack {
                    if currentlyEditing {
                        AngularGradient(gradient:
                                            Gradient(colors: gradient1),
                                        center: .center,
                                        angle: .degrees(colorAngle))
                        .blur(radius: 10)
                        .onAppear {
                            withAnimation(.linear(duration: 7)) {
                                colorAngle += 350
                            }
                        }
                    }
                    
                    Color.init(.tertiaryBackground)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .opacity(0.8)
                    .blur(radius: 3.0)
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .overlay {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.white, lineWidth: 1.0)
                    .blendMode(.overlay)
                Image(systemName: iconName)
                    .gradientForeground([
                        Color.init(.pinkGradient1),
                        Color.init(.pinkGradient2)
                    ])
                    .font(.system(size: 17, weight: .medium))
            }
        }
        .frame(width: 36, height: 36, alignment: .center)
        .padding(.vertical, 8)
        .padding(.leading, 8)
    }
}

#Preview {
    TextfieldIcon(iconName: "key.fill" ,currentlyEditing: .constant(true))
}
