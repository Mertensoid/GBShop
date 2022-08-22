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
    func getCatalog(
        pageNumber: Int,
        idCategory: Int,
        completionHandler: @escaping
        (AFDataResponse<[GetCatalogResult]>) -> Void)
}
