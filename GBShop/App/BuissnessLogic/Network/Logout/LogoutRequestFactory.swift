//
//  LogoutRequestFactory.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на выход
protocol LogoutRequestFactory {
    
    /// Отправка запроса
    /// - Parameters:
    ///   - id: id пользователя
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func logout(
        id: Int,
        completionHandler: @escaping
        (AFDataResponse<LogoutResult>) -> Void)
    
}
