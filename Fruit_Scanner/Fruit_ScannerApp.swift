//
//  Fruit_ScannerApp.swift
//  Fruit_Scanner

import SwiftUI
import Firebase

@main
struct Fruit_ScannerApp: App {
    let persistenceController = PersistenceController.shared
    
    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
