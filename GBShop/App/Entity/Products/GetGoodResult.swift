//
//  GetGoodResult.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation

/// Структура ответа на запрос получения товара
struct GetGoodResult: Codable {
    let result: Int
    let productName: String
    let productPrice: Int
    let productDescription: String
    
    /// Согласование имен параметров при декодировании JSON'а из ответа
    enum CodingKeys: String, CodingKey {
        case result
        case productName = "product_name"
        case productPrice = "product_price"
        case productDescription = "product_description"
    }
}
