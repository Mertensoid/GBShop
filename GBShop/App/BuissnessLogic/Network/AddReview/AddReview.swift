//
//  AddReview.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

/// Запрос на добавление нового отзыва
class AddReview: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: Constants.serverURL)!
    /// Инициализватор запроса на добавление нового отзыва
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

extension AddReview: AddReviewRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - userName: имя пользователя
    ///   - password: пароль пользователя
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func addReview(
        userId: Int,
        text: String,
        completionHandler: @escaping (AFDataResponse<AddReviewResult>) -> Void) {
            let requestModel = AddReview(
                baseUrl: baseUrl,
                userId: userId,
                text: text)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
    }
}

extension AddReview {
    struct AddReview: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "addReview"
        let userId: Int
        let text: String
        var parameters: Parameters? {
            return [
                "id_user": userId,
                "text": text
            ]
        }
    }
}

