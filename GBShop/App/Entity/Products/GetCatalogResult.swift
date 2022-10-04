//
//  GetCatalogResult.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation

/// Структура ответа на запрос получения каталога
struct GetCatalogResult: Codable {
    /// id товара
    let id: Int
    /// название товара
    let productName: String
    /// цена товара
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case productName = "product_name"
        case price
    }
}
