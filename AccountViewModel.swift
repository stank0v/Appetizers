//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Hristo Stankov on 26.03.24.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    func saveChanges() {
        guard isValidForm else {return}
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSaveSuccess
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    func retreiveUser() {
        guard let userData else { return }
     
        do {
            _ = try JSONDecoder().decode(User.self, from:userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            return false
        }
        alertItem = AlertContext.invalidEmail
        return true
    }
    
}
