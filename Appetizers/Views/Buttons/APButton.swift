//
//  APButton.swift
//  Appetizers
//
//  Created by Hristo Stankov on 24.03.24.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
        
            .frame(width: 260, height: 50)
            .fontWeight(.semibold)
            .font(.title3)
            .background(Color("brandPrimary"))
            .foregroundStyle(Color(.white))
           
            .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

#Preview {
    APButton(title: "Test")
}
