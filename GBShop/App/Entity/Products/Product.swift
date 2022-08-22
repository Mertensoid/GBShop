//
//  Product.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation

/// Структура параметров товара для ответа на запрос каталога (пока не используется)
struct Product: Codable {
    let id: Int
    let productName: String
    let price: Int
    
    /// Согласование имен параметров при декодировании JSON'а из ответа
    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case productName = "product_name"
        case price
    }
}
