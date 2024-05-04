//
//  DetailsView.swift
//  Appetizers
//
//  Created by Hristo Stankov on 24.03.24.
//

import SwiftUI

struct AppetizerDetailsView: View {
    
    @EnvironmentObject var order : Order
    
    let appetizer : Appetizer
    @Binding var isShowingDetail: Bool
    var body: some View {
        
        
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(width: 320, height: 225)
                .aspectRatio(contentMode: .fit)
            VStack{
                Text(appetizer.name)
                    .font(.title2)
                  
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .font(.subheadline)
                    .padding()
                    .multilineTextAlignment(.center)
                    .padding()
            }
            HStack(spacing: 30){
               
                NutritionInfo(title: "Calories", value: appetizer.calories)
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
                NutritionInfo(title: "Protein", value: appetizer.protein)
            }
            Spacer()
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {

                Text("$ \(appetizer.price, specifier: "%.2f") - Add to Order")
                
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom,30)
        }
            .frame(width: 320, height: 525)
            .background(Color(.systemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 40)
            .overlay(
                Button {
                    isShowingDetail = false
                } label: {
                  XDismissButton()
                }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailsView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

struct NutritionInfo : View {
    
    let title: String
    let value : Int
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .bold()
            Text("\(value)")
                .italic()
                .foregroundStyle(Color(.secondaryLabel))
        }
    }
}
