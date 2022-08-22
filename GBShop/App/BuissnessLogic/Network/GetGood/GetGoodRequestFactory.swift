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
    func getGood(
        id: Int,
        completionHandler: @escaping
        (AFDataResponse<GetGoodResult>) -> Void)
}
