//
//  DeleteFromBasketRequestFactory.swift
//  GBShop
//
//  Created by admin on 22.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на удаление товара из корзины
protocol DeleteFromBasketRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - productId: id товара
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func deleteFromBasket(
        productId: Int,
        completionHandler: @escaping (AFDataResponse<DeleteFromBasketResult>) -> Void)
}
