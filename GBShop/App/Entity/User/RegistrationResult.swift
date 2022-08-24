//
//  RegistrationResult.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation

/// Структура ответа на запрос регистрации
struct RegistrationResult: Codable {
    /// результат ответа на запрос (1/0)
    let result: Int
    /// сообщение об успешной регистрации
    let userMessage: String?
    /// сообщение об ошибке
    let errorMessage: String?
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
        case errorMessage = "error_message"
    }
}
