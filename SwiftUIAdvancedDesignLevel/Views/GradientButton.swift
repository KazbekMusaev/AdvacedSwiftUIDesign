//
//  GradientButton.swift
//  SwiftUIAdvancedDesignLevel
//
//  Created by KazbekMusaev on 02.06.2024.
//

import SwiftUI

struct GradientButton: View {
   
    var buttonLabel: String
    @State private var angle: Double = 0.0
    let gradient1: [Color] = [
        Color.init(red: 101/255, green: 134/255, blue: 1),
        Color.init(red: 1, green: 64/255, blue: 80/255),
        Color.init(red: 109/255, green: 1, blue: 185/255),
        Color.init(red: 39/255, green: 232/255, blue: 1)
    ]
    var buttonAction: () -> Void
    var body: some View {
        Button {
            buttonAction()
        } label: {
            GeometryReader { proxy in
                ZStack {
                    AngularGradient.init(gradient: Gradient(colors: gradient1), center: .center, angle: .degrees(angle))
                        .blendMode(.overlay)
                        .blur(radius: 8.0)
                        .mask {
                            RoundedRectangle(cornerRadius: 16)
                                .frame(height: 50)
                                .frame(maxWidth: proxy.size.width - 16)
                                .blur(radius: 8.0)
                        }
                    GradientText(text: buttonLabel)
                        .font(.headline)
                        .frame(width: proxy.size.width - 16)
                        .frame(height: 50)
                        .background(
                            Color("tertiaryBackground")
                                .opacity(0.9)
                        )
                        .overlay {
                            RoundedRectangle(cornerRadius: 16.0)
                                .stroke(Color.white, lineWidth: 2)
                                .blendMode(.normal)
                                .opacity(0.7)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
            }
            .frame(height: 50)
        }
        .onAppear {
            withAnimation(.linear(duration: 7)) {
                angle += 1000
            }
        }
    }
}
