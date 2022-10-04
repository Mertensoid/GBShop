//
//  Product.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation

/// Структура параметров товара для ответа на запрос каталога (пока не используется)
struct Product: Codable {
    /// id товара
    let id: Int
    /// название товара
    let productName: String
    /// цена товара
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case productName = "product_name"
        case price
    }
}
