//
//  DeleteReviewRequestFactory.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

protocol DeleteReviewRequestFactory {
    func deleteReview(
        commentId: Int,
        completionHandler: @escaping (AFDataResponse<DeleteReviewResult>) -> Void)
}
