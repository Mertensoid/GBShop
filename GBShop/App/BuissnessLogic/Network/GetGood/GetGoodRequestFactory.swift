//
//  GetGoodRequestFactory.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation
import Alamofire

protocol GetGoodRequestFactory {
    func getGood(
        id: Int,
        completionHandler: @escaping
        (AFDataResponse<GetGoodResult>) -> Void)
}
