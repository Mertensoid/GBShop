//
//  LoginResult.swift
//  GBShop
//
//  Created by admin on 08.08.2022.
//

import Foundation

/// Структура ответа на запрос логина
struct LoginResult: Codable {
    /// результат ответа на запрос (1/0)
    let result: Int
    /// пользователь
    let user: User
}
