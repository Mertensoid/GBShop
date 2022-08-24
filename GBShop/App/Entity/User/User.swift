//
//  User.swift
//  GBShop
//
//  Created by admin on 08.08.2022.
//

import Foundation

/// Структура параметров пользователя для отвера на запрос логина
struct User: Codable {
    /// id пользователя
    let id: Int
    /// логин пользователя
    let login: String
    /// имя пользователя
    let name: String
    /// фамилия пользователя
    let lastname: String
}
