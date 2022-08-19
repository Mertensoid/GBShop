//
//  LoginResult.swift
//  GBShop
//
//  Created by admin on 08.08.2022.
//

import Foundation

/// Структура ответа на запрос логина
struct LoginResult: Codable {
    let result: Int
    let user: User
}
