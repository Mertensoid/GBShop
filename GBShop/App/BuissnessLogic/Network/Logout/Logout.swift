//
//  Logout.swift
//  GBShop
//
//  Created by admin on 13.08.2022.
//

import Foundation
import Alamofire

/// Запрос на выход
class Logout: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: Constants.serverURL)!
    /// Инициализватор запроса на выход
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

extension Logout: LogoutRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - userName: имя пользователя
    ///   - password: пароль пользователя
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func logout(
        id: Int,
        completionHandler: @escaping (AFDataResponse<LogoutResult>) -> Void) {
            let requestModel = Logout(
                baseUrl: baseUrl,
                id: id)
            self.request(
                request: requestModel,
                completionHandler:
                    completionHandler)
        }
}

extension Logout {
    struct Logout: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "logout"
        let id: Int
        var parameters: Parameters? {
            return [
                "id_user": id
            ]
        }
    }
}
