//
//  GetGood.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation
import Alamofire

class GetGood: AbstractRequestFactory {
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

extension GetGood: GetGoodRequestFactory {
    func getGood(
        id: Int,
        completionHandler: @escaping (AFDataResponse<GetGoodResult>) -> Void) {
            let requestModel = GetGood(
                baseUrl: baseUrl,
                id: id)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
    }
}

extension GetGood {
    struct GetGood: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "getGoodById.json"
        let id: Int
        var parameters: Parameters? {
            return [
                "id_product": id,
            ]
        }
    }
}
