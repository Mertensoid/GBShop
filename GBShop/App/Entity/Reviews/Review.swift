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
    let reviewAuthor: String
    let reviewDate: String
    /// текст отзыва
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case commentId = "id_comment"
        case reviewAuthor = "review_author"
        case reviewDate = "review_date"
        case text = "review_text"
    }
}
