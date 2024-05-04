//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Hristo Stankov on 24.03.24.
//

import SwiftUI

@MainActor final class AppetizerListViewModel : ObservableObject {
    
    @Published var appetizers : [Appetizer] = []
    @Published var alertItem : AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer : Appetizer?
    
    
    func getAppetizers() {
        isLoading = true
        Task{
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch {
                if let aPerror = error as? APError {
                    switch aPerror {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.genericError
                    isLoading = false
                }
            }
        }
    }
}
