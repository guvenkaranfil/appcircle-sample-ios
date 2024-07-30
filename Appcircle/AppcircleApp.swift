//
//  AppcircleApp.swift
//  Appcircle
//
//  Created by Mustafa on 29.12.2021.
//

import SwiftUI
import AppCenter
import AppCenterDistribute



@main
struct AppcircleApp: App {
    
    init() {
        AppCenter.start(withAppSecret: "d24149e2-e73d-4353-9a79-fb0740fd3bdd", services: [
            Distribute.self
        ])
        
        Distribute.checkForUpdate()
        Distribute.notify(.update)
        
        if (Distribute.enabled) {
            print("App Center Distribute Enabled")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
