//
//  GetReviewListResult.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

struct GetReviewListResult: Codable {
    let productId: Int
    let reviews: [Review]
    
    enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case reviews
    }
}
