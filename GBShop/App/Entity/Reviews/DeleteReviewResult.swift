//
//  DeleteReviewResult.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation

/// Структура ответа на запрос удаления отзыва
struct DeleteReviewResult: Codable {
    /// результат ответа на запрос (1/0)
    let result: Int
}
