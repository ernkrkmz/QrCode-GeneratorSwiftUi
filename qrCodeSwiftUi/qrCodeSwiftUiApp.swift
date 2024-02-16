//
//  qrCodeSwiftUiApp.swift
//  qrCodeSwiftUi
//
//  Created by Eren Korkmaz on 16.02.2024.
//

import SwiftUI

@main
struct qrCodeSwiftUiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
