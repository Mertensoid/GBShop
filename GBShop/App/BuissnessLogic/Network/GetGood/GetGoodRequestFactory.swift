//
//  GetGoodRequestFactory.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на получение товара
protocol GetGoodRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - id: id товара
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func getGood(
        id: Int,
        completionHandler: @escaping
        (AFDataResponse<GetGoodResult>) -> Void)
}
