//
//  ChangeUserDataRequestFactory.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на изменение параметров пользователя
protocol ChangeUserDataRequestFactory {
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
    func changeUserData(
        id: Int,
        userName: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        biography: String,
        completionHandler: @escaping
        (AFDataResponse<ChangeUserDataResult>) -> Void)
}
