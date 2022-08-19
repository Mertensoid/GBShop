//
//  ErrorParser.swift
//  GBShop
//
//  Created by admin on 08.08.2022.
//

import Foundation

/// Обработчик ошибок
class ErrorParser: AbstractErrorParser {
    func parse(_ result: Error) -> Error {
        return result
    }
    
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error? {
        return error
    }
}
