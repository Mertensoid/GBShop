//
//  DeleteFromBasketResult.swift
//  GBShop
//
//  Created by admin on 22.08.2022.
//

import Foundation

/// Структура параметров пользователя для отвера на запрос логина
struct DeleteFromBasketResult: Codable {
    /// результат ответа на запрос (1/0)
    let result: Int
}
