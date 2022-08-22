//
//  DataRequest.swift
//  GBShop
//
//  Created by admin on 08.08.2022.
//

import Foundation
import Alamofire

/// Декодировщик ответа на запрос
class CustomDecodableSerializer<T: Decodable>: DataResponseSerializerProtocol {
    private let errorParser: AbstractErrorParser
    /// Иницицализатор декодировщика
    /// - Parameter errorParser: обработчик ошибок
    init(errorParser: AbstractErrorParser) {
        self.errorParser = errorParser
    }
    /// Декодирование ответа на запрос
    /// - Parameters:
    ///   - request: запрос
    ///   - response: ответ на запрос
    ///   - data: данные ответа
    ///   - error: ошибка
    /// - Returns: декодированные данные
    func serialize(
        request: URLRequest?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?) throws -> T {
            if let error = errorParser.parse(
                response: response,
                data: data,
                error: error) {
                throw error
            }
            do {
                let data = try DataResponseSerializer().serialize(
                    request: request,
                    response: response,
                    data: data,
                    error: error
                )
                let value = try JSONDecoder().decode(
                    T.self,
                    from: data)
                return value
            } catch {
                let customError = errorParser.parse(error)
                throw customError
            }
        }
}

/// Протокол, описывающий обязательные свойства и методы фабрики запросов
protocol AbstractRequestFactory {
    var errorParser: AbstractErrorParser { get }
    var sessionManager: Session { get }
    var queue: DispatchQueue { get }
    
    @discardableResult
    func request<T: Decodable>(
        request: URLRequestConvertible,
        completionHandler: @escaping (AFDataResponse<T>) -> Void) -> DataRequest
}

extension AbstractRequestFactory {
    @discardableResult
    public func request<T: Decodable>(
        request: URLRequestConvertible,
        completionHandler: @escaping (AFDataResponse<T>) -> Void) -> DataRequest {
            return sessionManager
                .request(request)
                .responseCodable(
                    errorParser: errorParser,
                    queue: queue,
                    completionHandler: completionHandler)
        }
}

extension DataRequest {
    
    @discardableResult
    /// Декодирование ответа на запрос
    /// - Parameters:
    ///   - errorParser: обработчик ошибок
    ///   - queue: очередь
    ///   - completionHandler: тип функции AF для получения ответа на запрос
    /// - Returns: декодированный ответ
    func responseCodable<T: Decodable>(
        errorParser: AbstractErrorParser,
        queue: DispatchQueue = .main,
        completionHandler: @escaping (AFDataResponse<T>) -> Void) -> Self {
            let responseSerializer = CustomDecodableSerializer<T>(errorParser: errorParser)
            return response(
                queue: queue,
                responseSerializer: responseSerializer,
                completionHandler: completionHandler)
        }
}
