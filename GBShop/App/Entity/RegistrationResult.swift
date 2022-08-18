//
//  RegistrationResult.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation

struct RegistrationResult: Codable {
    let result: Int
    let userMessage: String?
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
    case result
    case userMessage = "user_message"
    case errorMessage = "error_message"
    }
}
