//
//  GetCatalogResult.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation

struct GetCatalogResult: Codable {
    let id: Int
    let productName: String
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case productName = "product_name"
        case price
    }
}
