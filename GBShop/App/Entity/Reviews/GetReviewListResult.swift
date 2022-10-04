//
//  GetReviewListResult.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

/// Структура ответа на запрос получения списка отзывов
struct GetReviewListResult: Codable {
    /// id товара
    let productId: Int
    /// массив отзывов о товаре
    let reviews: [Review]
    
    enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case reviews
    }
}
