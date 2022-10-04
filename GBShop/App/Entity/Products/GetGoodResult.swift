//
//  GetGoodResult.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation

/// Структура ответа на запрос получения товара
struct GetGoodResult: Codable {
    /// результат ответа на запрос (1/0)
    let result: Int
    /// название товара
    let productName: String
    /// цена товара
    let productPrice: Int
    /// описание товара
    let productDescription: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case productName = "product_name"
        case productPrice = "product_price"
        case productDescription = "product_description"
    }
}
