//
//  ChangeUserDataResult.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation

/// Структура ответа на запрос изменения параметром пользователя
struct ChangeUserDataResult: Codable {
    /// результат ответа на запрос (1/0)
    let result: Int
}
