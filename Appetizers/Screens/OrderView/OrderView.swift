//
//  OrderView.swift
//  Appetizers
//
//  Created by Hristo Stankov on 20.03.24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                            
                        }
                        .onDelete(perform: order.deleteItems)
                        
                    }
                    .listStyle(.plain)
                    Spacer()
                    Button{
                        print("Order placed")
                    } label: {
                     Text("\(order.totalPrice, specifier: "%.2f")Place order")
                            .modifier(StandardButtonStyle())
                    }
                    .padding(.bottom,40)
                    
                }
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no orders")
                }
            }
            .navigationTitle("🧾 Orders")
        }
        
    }
    
   
}

#Preview {
    OrderView()
}
