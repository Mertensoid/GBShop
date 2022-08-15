//
//  ChangeUserData.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation
import Alamofire

class ChangeUserData: AbstractRequestFactory {
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

extension ChangeUserData: ChangeUserDataRequestFactory {
    func changeUserData(
        id: Int,
        userName: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        biography: String,
        completionHandler: @escaping (AFDataResponse<ChangeUserDataResult>) -> Void) {
            let requestModel = ChangeUserData(
                baseUrl: baseUrl,
                id: id,
                userName: userName,
                password: password,
                email: email,
                gender: gender,
                creditCard: creditCard,
                biography: biography)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
    }
}

extension ChangeUserData {
    struct ChangeUserData: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "changeUserData.json"
        let id: Int
        let userName: String
        let password: String
        let email: String
        let gender: String
        let creditCard: String
        let biography: String
        var parameters: Parameters? {
            return [
                "id_user": id,
                "username" : userName,
                "password" : password,
                "email" : email,
                "gender": gender,
                "credit_card" : creditCard,
                "bio" : biography
            ]
        }
    }
}
