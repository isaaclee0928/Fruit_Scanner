//
//  Fruit_ScannerApp.swift
//  Fruit_Scanner
//
//  Created by Isaac Lee on 14/4/2022.
//

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
