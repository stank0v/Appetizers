//
//  Alert.swift
//  Appetizers
//
//  Created by Hristo Stankov on 24.03.24.
//

import SwiftUI

struct AlertItem :Identifiable{
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton : Alert.Button
}

struct AlertContext {
    // - NetworkAlerts
    static let invalidData      = AlertItem(title: Text("Server error"),
                                              message: Text("The data received from the server was invalid. Please contact support"),
                                              dismissButton: .default(Text("OK")))
    static let invalidResponse  = AlertItem(title: Text("Server error"),
                                              message: Text("Invalid response from the server. Please try again later"),
                                              dismissButton: .default(Text("OK")))
    static let invalidURL       = AlertItem(title: Text("Server error"),
                                              message: Text("There was an issue connecting to the server."),
                                              dismissButton: .default(Text("OK")))
    static let unableToComplete = AlertItem(title: Text("Server error"),
                                              message: Text("Unable to complete your request at this time. Please check your internet connection"),
                                              dismissButton: .default(Text("OK")))
    // - Account Alerts
    static let invalidEmail = AlertItem(title: Text("Input error"),
                                              message: Text("Please check your email"),
                                              dismissButton: .default(Text("OK")))
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Please ensure all fields are filled"),
                                              dismissButton: .default(Text("OK")))
    static let userSaveSuccess = AlertItem(title: Text("Profile Save"),
                                              message: Text("Your profile information has been saved"),
                                              dismissButton: .default(Text("OK")))
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                              message: Text("Your profile information cannnot be retrieved"),
                                              dismissButton: .default(Text("OK")))
    
    static let genericError = AlertItem(title: Text("Error"),
                                              message: Text("Something went wrong. Please try again later"),
                                              dismissButton: .default(Text("OK")))

}
