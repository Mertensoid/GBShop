//
//  GetCatalogRequestFactory.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation
import Alamofire

/// Протокол, описывающий обязательные функции для отправки запроса на получение каталога
protocol GetCatalogRequestFactory {
    /// Отправка запроса
    /// - Parameters:
    ///   - pageNumber: номер страницы каталога
    ///   - idCategory: id категории товаров
    ///   - completionHandler: тип функции AF, выполняющей сам запрос
    func getCatalog(
        pageNumber: Int,
        idCategory: Int,
        completionHandler: @escaping
        (AFDataResponse<[GetCatalogResult]>) -> Void)
}
