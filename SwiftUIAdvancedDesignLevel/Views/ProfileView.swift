//
//  ProfileView.swift
//  SwiftUIAdvancedDesignLevel
//
//  Created by KazbekMusaev on 11.06.2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject private var firebaseViewModel = FirebaseAuthViewModel()
    
    var body: some View {
        GradientButton(buttonLabel: "Выйти") {
            firebaseViewModel.signOut()
        }
    }
}
