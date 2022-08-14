//
//  GetCatalogRequestFactory.swift
//  GBShop
//
//  Created by admin on 14.08.2022.
//

import Foundation
import Alamofire

protocol GetCatalogRequestFactory {
    func getCatalog(
        pageNumber: Int,
        idCategory: Int,
        completionHandler: @escaping
        (AFDataResponse<[GetCatalogResult]>) -> Void)
}
