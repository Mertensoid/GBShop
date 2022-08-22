//
//  AddReviewResult.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

/// Структура ответа на запрос добавления нового отзыва
struct AddReviewResult: Codable {
    let result: Int
    let userMessage: String
    
    /// Согласование имен параметров при декодировании JSON'а из ответа
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
    }
}
