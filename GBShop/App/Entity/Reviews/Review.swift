//
//  Review.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

/// Структура параметров отзыва для ответа на запрос получения списка отзывов
struct Review: Codable {
    let commentId: Int
    let text: String
    
    /// Согласование имен параметров при декодировании JSON'а из ответа
    enum CodingKeys: String, CodingKey {
        case commentId = "id_comment"
        case text
    }
}
