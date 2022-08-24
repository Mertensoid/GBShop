//
//  AddReviewResult.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

/// Структура ответа на запрос добавления нового отзыва
struct AddReviewResult: Codable {
    /// результат ответа на запрос (1/0)
    let result: Int
    /// сообщение об отправке на модерацию
    let userMessage: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
    }
}
