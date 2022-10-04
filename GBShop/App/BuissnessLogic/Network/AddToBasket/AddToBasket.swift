//
//  AddToBasket.swift
//  GBShop
//
//  Created by admin on 22.08.2022.
//

import Foundation
import Alamofire

/// Запрос на добаление товара в корзину
class AddToBasket: AbstractRequestFactory {
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

extension AddToBasket: AddToBasketRequestFactory {
    func addToBasket(
        productId: Int,
        quantity: Int,
        completionHandler: @escaping (AFDataResponse<AddToBasketResult>) -> Void) {
            let requestModel = AddToBasket(
                baseUrl: baseUrl,
                productId: productId,
                quantity: quantity)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
    }
}

extension AddToBasket {
    struct AddToBasket: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "addToBasket"
        let productId: Int
        let quantity: Int
        var parameters: Parameters? {
            return [
                "id_product": productId,
                "quantity": quantity
            ]
        }
    }
}
