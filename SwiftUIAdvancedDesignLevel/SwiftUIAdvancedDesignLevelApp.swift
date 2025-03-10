//
//  SwiftUIAdvancedDesignLevelApp.swift
//  SwiftUIAdvancedDesignLevel
//
//  Created by KazbekMusaev on 02.06.2024.
//

import SwiftUI

@main
struct SwiftUIAdvancedDesignLevelApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
