//
//  DataRequest.swift
//  GBShop
//
//  Created by admin on 08.08.2022.
//

import Foundation
import Alamofire

class CustomDecodableSerializer<T: Decodable>: DataResponseSerializerProtocol {
    private let errorParser: AbstractErrorParser
    init(errorParser: AbstractErrorParser) {
        self.errorParser = errorParser
    }
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
                let data = try DataResponseSerializer().serialize(request: request,
                                                                  response: response,
                                                                  data: data,
                                                                  error: error)
                let value = try JSONDecoder().decode(T.self, from: data)
                return value
            } catch {
                let customError = errorParser.parse(error)
                throw customError
            }
        }
}

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
            return sessionManager.request(request).responseCodable(
                errorParser: errorParser,
                queue: queue,
                completionHandler: completionHandler)
        }
}

extension DataRequest {
    
    @discardableResult
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

//Этот код, приведенный в методичке также не работает, вероятно я должен понимать что тут не так и как это исправить, но я не понимаю...
//К тому же в методичке ссылаются на то, что этот код был написан ранее, но он не вяжется с тем, что было в предыдущих методичках

//extension DataRequest {
//    @discardableResult
//    func responseCodable<T: Decodable>(
//        errorParcer: AbstractErrorParser,
//        queue: DispatchQueue = .main,
//        completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
//            let responseSerializer = DataResponseSerializer<T> { request, response, data, error in
//                if let error = errorParcer.parse(response: response, data: data, error: error) {
//                    return .failure(error)
//                }
//                let result = Request.serializeResponseData(response: response, data: nil, error: nil)
//                switch result {
//                case .success(let data):
//                    do {
//                        let value = try JSONDecoder().decode(T.self, from: data)
//                        return .success(value)
//                    } catch {
//                        let customError = errorParcer.parse(error)
//                        return .failure(customError)
//                    }
//                case .failure(let error):
//                    let customError = errorParser.parse(error)
//                    return .failure(customError)
//                }
//            }
//            return response(queue: queue, responseSerializer: responseSerializer, completionHandler: completionHandler)
//        }
//}
