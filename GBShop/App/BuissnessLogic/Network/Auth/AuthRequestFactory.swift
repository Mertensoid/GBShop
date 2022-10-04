//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by admin on 12.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на логин
protocol AuthRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - userName: имя пользователя
    ///   - password: пароль пользователя
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func login(
        userName: String,
        password: String,
        completionHandler: @escaping
        (AFDataResponse<LoginResult>) -> Void)
}
