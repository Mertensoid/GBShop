//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by admin on 12.08.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(
        userName: String,
        password: String,
        completionHandler: @escaping
    (AFDataResponse<LoginResult>) -> Void)
}
