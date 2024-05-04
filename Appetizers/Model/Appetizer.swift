//
//  Appetizer.swift
//  Appetizers
//
//  Created by Hristo Stankov on 23.03.24.
//

import Foundation

struct Appetizer : Decodable, Identifiable {
    let id : Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}
struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 01,
                                           name: "Test Appetizer 1",
                                           description: "This is the description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 22,
                                           protein: 33,
                                           carbs: 44)
    static let sampleAppetizer2 = Appetizer(id: 02,
                                           name: "Test Appetizer 2",
                                           description: "This is the description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 22,
                                           protein: 33,
                                           carbs: 44)
    static let sampleAppetizer3 = Appetizer(id: 03,
                                           name: "Test Appetizer 3",
                                           description: "This is the description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 22,
                                           protein: 33,
                                           carbs: 44)
    static let sampleAppetizer4 = Appetizer(id: 04,
                                           name: "Test Appetizer 3",
                                           description: "This is the description",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 22,
                                           protein: 33,
                                           carbs: 44)
    
    static let Appetizers = [sampleAppetizer,sampleAppetizer2,sampleAppetizer3,sampleAppetizer4]
}
