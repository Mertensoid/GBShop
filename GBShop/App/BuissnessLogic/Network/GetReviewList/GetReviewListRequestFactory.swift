//
//  GetReviewListRequestFactory.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на получение списка отзывов
protocol GetReviewListRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - productId: id товара
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func getReviewList(
        productId: Int,
        completionHandler: @escaping (AFDataResponse<GetReviewListResult>) -> Void)
}
