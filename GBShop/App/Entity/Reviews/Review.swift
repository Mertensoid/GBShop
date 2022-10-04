//
//  Review.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

/// Структура параметров отзыва для ответа на запрос получения списка отзывов
struct Review: Codable {
    /// id отзыва
    let commentId: Int
    /// текст отзыва
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case commentId = "id_comment"
        case text
    }
}
