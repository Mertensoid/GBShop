//
//  GetCatalogResult.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation

/// Структура ответа на запрос получения каталога
struct GetCatalogResult: Codable {
    let id: Int
    let productName: String
    let price: Int
    
    /// Согласование имен параметров при декодировании JSON'а из ответа
    enum CodingKeys: String, CodingKey {
        case id
        case productName = "product_name"
        case price
    }
}
