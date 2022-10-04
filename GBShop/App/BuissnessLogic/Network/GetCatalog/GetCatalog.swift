//
//  GetCatalog.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation
import Alamofire

/// Запрос на получение каталога
class GetCatalog: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: Constants.serverURL)!
    /// Инициализатор запроса на получение каталога
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

extension GetCatalog: GetCatalogRequestFactory {
    func getCatalog(
        pageNumber: Int,
        idCategory: Int,
        completionHandler: @escaping (AFDataResponse<[GetCatalogResult]>) -> Void) {
            let requestModel = GetCatalog(
                baseUrl: baseUrl,
                pageNumber: pageNumber,
                idCategory: idCategory)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
    }
}

extension GetCatalog {
    struct GetCatalog: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "getCatalog"
        let pageNumber: Int
        let idCategory: Int
        var parameters: Parameters? {
            return [
                "page_number": pageNumber,
                "id_category": idCategory
            ]
        }
    }
}

