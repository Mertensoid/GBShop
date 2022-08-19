//
//  Review.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

struct Review: Codable {
    let commentId: Int
    let text: String
    
    enum CodingKeys: String, CodingKey {
        case commentId = "id_comment"
        case text
    }
}
