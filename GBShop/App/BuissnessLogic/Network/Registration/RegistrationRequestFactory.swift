//
//  RegistrationAbstractFactory.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на регистрацию
protocol RegistrationRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - id: id пользователя
    ///   - userName: имя пользователя
    ///   - password: пароль пользователя
    ///   - email: email пользователя
    ///   - gender: пол пользователя
    ///   - creditCard: номер кредитной карты
    ///   - biography: дополнительная информация о пользователе
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func registration(
        id: Int,
        userName: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        biography: String,
        completionHandler: @escaping
        (AFDataResponse<RegistrationResult>) -> Void)
}
