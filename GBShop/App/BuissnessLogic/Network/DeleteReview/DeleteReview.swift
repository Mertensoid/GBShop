//
//  DeleteReview.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

/// Запрос на удаление нового отзыва
class DeleteReview: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: Constants.serverURL)!
    /// Инициализватор запроса на удаление отзыва
    /// - Parameters:
    ///   - errorParser: обработчик ошибок
    ///   - sessionManager: экземпляр сессии для отправки запроса
    ///   - queue: тип очереди для отправки запроса
    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
            self.errorParser = errorParser
            self.sessionManager = sessionManager
            self.queue = queue
        }
}

extension DeleteReview: DeleteReviewRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - userName: имя пользователя
    ///   - password: пароль пользователя
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func deleteReview(
        commentId: Int,
        completionHandler: @escaping (AFDataResponse<DeleteReviewResult>) -> Void) {
            let requestModel = DeleteReview(
                baseUrl: baseUrl,
                commentId: commentId)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
    }
}

extension DeleteReview {
    struct DeleteReview: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "deleteReview"
        let commentId: Int
        var parameters: Parameters? {
            return [
                "id_comment": commentId
            ]
        }
    }
}
