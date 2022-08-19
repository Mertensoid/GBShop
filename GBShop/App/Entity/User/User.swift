//
//  User.swift
//  GBShop
//
//  Created by admin on 08.08.2022.
//

import Foundation

/// Структура параметров пользователя для отвера на запрос логина
struct User: Codable {
    let id: Int
    let login: String
    let name: String
    let lastname: String
}
