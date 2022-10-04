//
//  LogoutResult.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation

/// Структура ответа на запрос выхода
struct LogoutResult: Codable {
    /// результат ответа на запрос (1/0)
    let result: Int
}
