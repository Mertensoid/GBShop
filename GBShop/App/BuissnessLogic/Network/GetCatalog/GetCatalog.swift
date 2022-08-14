//
//  GetCatalog.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation
import Alamofire

class GetCatalog: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!
    
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
        let method: HTTPMethod = .get
        let path: String = "catalogData.json"
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

