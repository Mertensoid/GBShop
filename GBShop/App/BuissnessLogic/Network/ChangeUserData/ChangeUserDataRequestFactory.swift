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
