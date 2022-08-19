//
//  AddReviewRequestFactory.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

protocol AddReviewRequestFactory {
    func addReview(
        userId: Int,
        text: String,
        completionHandler: @escaping (AFDataResponse<AddReviewResult>) -> Void)
}
