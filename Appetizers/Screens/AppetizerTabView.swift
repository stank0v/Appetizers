//
//  ContentView.swift
//  Appetizers
//
//  Created by Hristo Stankov on 20.03.24.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var  order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    //Image(systemName: "house")
                    //Text("Home")
                    Label("Home", systemImage: "house")
                }
            
            AccountView()
                .tabItem {
                   // Image(systemName: "person")
                   // Text("Account")
                    Label("Account", systemImage: "person")
                }
            OrderView()
                .tabItem {Label("Order", systemImage: "bag") }
                .badge(order.items.count)
            
        }
    }
}

#Preview {
    AppetizerTabView()
}
