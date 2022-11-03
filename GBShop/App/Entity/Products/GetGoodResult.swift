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
    let id: Int
    /// название товара
    let productName: String
    let productPicture: String
    /// цена товара
    let productPrice: Int
    let productType: String
    let installLocation: String
    let protectionSquare: String
    let protectionVolume: String
    let startType: String
    let startCurrent: String
    /// описание товара
    let productDescription: String
    let productRating: Int
    let reviewsNumber: Int
    let productReview: [Review]
    
    enum CodingKeys: String, CodingKey {
        case result
        case id
        case productName = "product_name"
        case productPicture = "product_picture"
        case productPrice = "product_price"
        case productType = "product_type"
        case installLocation = "install_location"
        case protectionSquare = "protection_square"
        case protectionVolume = "protection_volume"
        case startType = "start_type"
        case startCurrent = "start_current"
        case productDescription = "product_description"
        case productRating = "product_rating"
        case reviewsNumber = "reviews_number"
        case productReview = "product_reviews"
    }
}
