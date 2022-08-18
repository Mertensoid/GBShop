//
//  DataRequestStub.swift
//  GBShopTests
//
//  Created by admin on 15.08.2022.
//

import Foundation
import Alamofire
@testable import GBShop

class CustomDecodableSerializerStub<T: Decodable>: DataResponseSerializerProtocol {
    private let errorParser: AbstractErrorParser = ErrorParserStub()
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

