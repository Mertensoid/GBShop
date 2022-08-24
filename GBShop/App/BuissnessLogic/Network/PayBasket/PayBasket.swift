//
//  PayBasket.swift
//  GBShop
//
//  Created by admin on 22.08.2022.
//

import Foundation
import Alamofire

/// Запрос на удаление нового отзыва
class PayBasket: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: Constants.serverURL)!
    /// Инициализатор запроса на удаление отзыва
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

extension PayBasket: PayBasketRequestFactory {
    func payBasket(
        userId: Int,
        completionHandler: @escaping (AFDataResponse<PayBasketResult>) -> Void) {
            let requestModel = PayBasket(
                baseUrl: baseUrl,
                userId: userId)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
        }
}

extension PayBasket {
    struct PayBasket: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "payBasket"
        let userId: Int
        var parameters: Parameters? {
            return [
                "id_user": userId
            ]
        }
    }
}
