//
//  Registration.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation
import Alamofire

/// Запрос на регистрацию
class Registration: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: Constants.serverURL)!
    /// Инициализватор запроса на регистрацию
    /// - Parameters:
    ///   - errorParser: обработчик ошибок
    ///   - sessionManager: экземпляр сессии для отправки запроса
    ///   - queue: тип очереди для отправки запроса
    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
            self.errorParser = errorParser
            self.sessionManager = sessionManager
            self.queue = queue
        }
}

extension Registration: RegistrationRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - userName: имя пользователя
    ///   - password: пароль пользователя
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func registration(
        id: Int,
        userName: String,
        password: String,
        email: String,
        gender: String,
        creditCard: String,
        biography: String,
        completionHandler: @escaping (AFDataResponse<RegistrationResult>) -> Void) {
            let requestModel = Registration(
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

extension Registration {
    struct Registration: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "register"
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
