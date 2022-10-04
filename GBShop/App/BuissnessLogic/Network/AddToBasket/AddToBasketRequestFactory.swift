//
//  AddToBasketRequestFactory.swift
//  GBShop
//
//  Created by admin on 22.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на добавление товара в корзину
protocol AddToBasketRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - productId: id товара
    ///   - quantity: количество
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func addToBasket(
        productId: Int,
        quantity: Int,
        completionHandler: @escaping (AFDataResponse<AddToBasketResult>) -> Void)
}
