//
//  DeleteFromBasket.swift
//  GBShop
//
//  Created by admin on 22.08.2022.
//

import Foundation
import Alamofire

/// Запрос на удаление нового отзыва
class DeleteFromBasket: AbstractRequestFactory {
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

extension DeleteFromBasket: DeleteFromBasketRequestFactory {
    func deleteFromBasket(
        productId: Int,
        completionHandler: @escaping (AFDataResponse<DeleteFromBasketResult>) -> Void) {
            let requestModel = DeleteFromBasket(
                baseUrl: baseUrl,
                productId: productId)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
    }
}

extension DeleteFromBasket {
    struct DeleteFromBasket: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "deleteFromBasket"
        let productId: Int
        var parameters: Parameters? {
            return [
                "id_product": productId
            ]
        }
    }
}
