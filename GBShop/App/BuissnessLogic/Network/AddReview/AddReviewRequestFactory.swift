//
//  AddReviewRequestFactory.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на добавление нового отзыва
protocol AddReviewRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - userId: id пользователя
    ///   - text: текст отзыва
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func addReview(
        userId: Int,
        text: String,
        completionHandler: @escaping (AFDataResponse<AddReviewResult>) -> Void)
}
