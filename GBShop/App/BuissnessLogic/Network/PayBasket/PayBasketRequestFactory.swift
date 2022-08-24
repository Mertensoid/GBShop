//
//  PayBasketRequestFactory.swift
//  GBShop
//
//  Created by admin on 22.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на оплату корзины
protocol PayBasketRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - userId: id пользователя, оплачивающего заказ
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func payBasket(
        userId: Int,
        completionHandler: @escaping (AFDataResponse<PayBasketResult>) -> Void)
}
