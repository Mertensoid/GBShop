//
//  GetReviewListResult.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

/// Структура ответа на запрос получения списка отзывов
struct GetReviewListResult: Codable {
    let productId: Int
    let reviews: [Review]
    
    /// Согласование имен параметров при декодировании JSON'а из ответа
    enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case reviews
    }
}
