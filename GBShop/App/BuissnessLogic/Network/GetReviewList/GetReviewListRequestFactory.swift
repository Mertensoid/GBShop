//
//  GetReviewListRequestFactory.swift
//  GBShop
//
//  Created by admin on 19.08.2022.
//

import Foundation
import Alamofire

protocol GetReviewListRequestFactory {
    func getReviewList(
        productId: Int,
        completionHandler: @escaping (AFDataResponse<[GetReviewListResult]>) -> Void)
}
