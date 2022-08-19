//
//  DeleteReview.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

class DeleteReview: AbstractRequestFactory {
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

extension DeleteReview: DeleteReviewRequestFactory {
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
