//
//  FirebaseAuthViewModel.swift
//  SwiftUIAdvancedDesignLevel
//
//  Created by KazbekMusaev on 11.06.2024.
//

import Foundation
import FirebaseAuth

final class FirebaseAuthViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    func createAccount() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            result?.user.sendEmailVerification()
        }
    }
    
    func checkAuth(complition: @escaping (Bool) -> ()) {
        Auth.auth().addStateDidChangeListener { auth, user in
            guard user != nil else {
                complition(false)
                return
            }
            complition(true)
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
    }
    
}
