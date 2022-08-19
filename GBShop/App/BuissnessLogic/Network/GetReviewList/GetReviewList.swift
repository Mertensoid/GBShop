//
//  GetReviewList.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

class GetReviewList: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: Constants.serverURL.rawValue)!
    
    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
            self.errorParser = errorParser
            self.sessionManager = sessionManager
            self.queue = queue
        }
}

extension GetReviewList: GetReviewListRequestFactory {
    
    func getReviewList(
        productId: Int,
        completionHandler: @escaping (AFDataResponse<GetReviewListResult>) -> Void) {
            let requestModel = GetReviewList(
                baseUrl: baseUrl,
                productId: productId
            )
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
    }
}

extension GetReviewList {
    struct GetReviewList: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "getReviewList"
        let productId: Int
        var parameters: Parameters? {
            return [
                "id_product": productId
            ]
        }
    }
}

