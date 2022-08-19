//
//  AddReviewResult.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

struct AddReviewResult: Codable {
    let result: Int
    let userMessage: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
    }
}
