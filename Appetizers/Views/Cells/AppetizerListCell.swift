//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Hristo Stankov on 23.03.24.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer: Appetizer
    var body: some View {
        HStack{
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }

            
            VStack(alignment: .leading,spacing: 6){
                
                Text(appetizer.name)
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(Color(.label))
                Text("$\(appetizer.price,specifier: "%.2f")")
                    .foregroundStyle(Color(.secondaryLabel))
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
