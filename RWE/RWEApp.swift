//
//  RWEApp.swift
//  RWE
//
//  Created by Olli on 03.05.23.
//

import SwiftUI

@main
struct RWEApp: App {
    @StateObject var networkMonitor = NetworkMonitor()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(NetworkMonitor())
        }
    }
}
