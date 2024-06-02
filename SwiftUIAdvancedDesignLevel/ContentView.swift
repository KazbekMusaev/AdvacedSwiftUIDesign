//
//  ContentView.swift
//  SwiftUIAdvancedDesignLevel
//
//  Created by KazbekMusaev on 02.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var email = String()
    @State private var password = String()
    
    var body: some View {
        ZStack {
            Image(.background3)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            VStack {
                VStack(alignment: .leading, spacing: 16) {
                    Text("Регистрация")
                        .font(.title2.bold())
                        .foregroundStyle(.white)
                    Text("Доступ к более чем 120 часам курсов, учебных пособий и прямых трансляций")
                        .font(.subheadline)
                        .foregroundStyle(.white.opacity(0.7))
                    HStack(spacing: 12) {
                        Image(systemName: "envelope.open.fill")
                            .foregroundStyle(.white)
                        TextField("Email", text: $email)
                            .preferredColorScheme(.dark)
                            .foregroundStyle(.white.opacity(0.7))
                            .textInputAutocapitalization(.none)
                            .textContentType(.emailAddress)
                    }
                    .frame(height: 52)
                    .overlay {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.white, lineWidth: 1.0)
                            .blendMode(.overlay)
                    }
                    .background {
                        Color("secondaryBackground")
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .opacity(0.8)
                    }
                    
                    HStack(spacing: 12) {
                        Image(systemName: "key.fill")
                            .foregroundStyle(.white)
                        SecureField("Password", text: $password)
                            .preferredColorScheme(.dark)
                            .foregroundStyle(.white.opacity(0.7))
                            .textInputAutocapitalization(.none)
                            .textContentType(.password)
                    }
                    .frame(height: 52)
                    .overlay {
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.white, lineWidth: 1.0)
                            .blendMode(.overlay)
                    }
                    .background {
                        Color("secondaryBackground")
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                            .opacity(0.8)
                    }
                    
                    GradientButton()
                    
                    Text("Нажатие кнопки означает, что вы соглашаетесь с политикой конфиденциальности и условиями пользования")
                        .font(.footnote)
                        .foregroundStyle(Color.white.opacity(0.7))
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundStyle(Color.white.opacity(0.1))
                    
                    VStack(alignment: .leading, spacing: 16) {
                        Button {
                            ()
                        } label: {
                            HStack(spacing: 4) {
                                Text("У вас есть учетная запись?")
                                    .font(.footnote)
                                    .foregroundStyle(Color.white.opacity(0.7))
                                GradientText(text: "Войти")
                                    .font(.footnote.bold())
                            }
                        }
                        
                    }
                }
                .padding(20)
            }
            .background {
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white.opacity(0.2))
                    .background(Color("secondaryBackground").opacity(0.5))
                    .background(VisualEffectBlur(blurStyle: .systemThinMaterialDark))
                    .shadow(color: .shadow.opacity(0.5), radius: 60, x: 0, y: 30)
            }
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .padding(.horizontal)
        }
        
    }
    
}

#Preview {
    ContentView()
}
