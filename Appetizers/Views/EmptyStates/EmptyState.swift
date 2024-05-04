//
//  EmptyState.swift
//  Appetizers
//
//  Created by Hristo Stankov on 28.03.24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack{
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 150)
                Text(message)
                    .padding()
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.secondaryLabel))
            }
            .offset(y: -50)
        }
    }
}


#Preview {
    EmptyState(imageName: "empty-order", message: "Your order is empty.")
}
