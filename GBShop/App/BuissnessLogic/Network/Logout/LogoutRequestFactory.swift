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
    func logout(
        id: Int,
        completionHandler: @escaping
        (AFDataResponse<LogoutResult>) -> Void)
    
}
