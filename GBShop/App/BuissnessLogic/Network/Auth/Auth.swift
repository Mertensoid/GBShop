//
//  Auth.swift
//  GBShop
//
//  Created by admin on 12.08.2022.
//

import Foundation
import Alamofire

/// Запрос на логин
class Auth: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: Constants.serverURL)!
    
    /// Инициализватор запроса на логин
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

extension Auth: AuthRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - userName: имя пользователя
    ///   - password: пароль пользователя
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func login(
        userName: String,
        password: String,
        completionHandler: @escaping
        (AFDataResponse<LoginResult>) -> Void) {
            let requestModel = Login(
                baseUrl: baseUrl,
                login: userName,
                password:
                    password)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
            
        }
}

extension Auth {
    /// Структура запроса логина
    struct Login: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "login"
        let login: String
        let password: String
        var parameters: Parameters? {
            return [
                "username": login,
                "password": password
            ]
        }
    }
}
