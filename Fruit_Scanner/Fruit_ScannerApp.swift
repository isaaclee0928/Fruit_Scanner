//
//  Fruit_ScannerApp.swift
//  Fruit_Scanner

import SwiftUI

@main
struct Fruit_ScannerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
