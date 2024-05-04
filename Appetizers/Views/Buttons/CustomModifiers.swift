//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Hristo Stankov on 30.03.24.
//

import SwiftUI

struct StandardButtonStyle:  ViewModifier {
    
    func body(content: Content) -> some View {
        content
        .buttonStyle(.bordered)
        .tint(.brandPrimary)
        .controlSize(.large)
    }
    
   
    
}
