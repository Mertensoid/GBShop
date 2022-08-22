//
//  AbstractErrorParser.swift
//  GBShop
//
//  Created by admin on 08.08.2022.
//

import Foundation

/// Протокол, описывающий обязательные функции обработчика ошибок
protocol AbstractErrorParser {
    /// Обработка готовой ошибки
    /// - Parameter result: ошибка
    /// - Returns: ошибка
    func parse(_ result: Error) -> Error
    /// Обработка ответа на запрос на наличие ошибки
    /// - Parameters:
    ///   - response: ответ на запрос
    ///   - data: данные ответа
    ///   - error: ошибка
    /// - Returns: ошибка
    func parse(
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?) -> Error?
}
