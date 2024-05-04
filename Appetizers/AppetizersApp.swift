//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Hristo Stankov on 20.03.24.
//

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()
                .environmentObject(order)
        }
    }
}
