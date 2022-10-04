//
//  DeleteReviewRequestFactory.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на удаление отзыва
protocol DeleteReviewRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - commentId: id отзыва
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func deleteReview(
        commentId: Int,
        completionHandler: @escaping (AFDataResponse<DeleteReviewResult>) -> Void)
}
