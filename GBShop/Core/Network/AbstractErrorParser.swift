//
//  AbstractErrorParser.swift
//  GBShop
//
//  Created by admin on 08.08.2022.
//

import Foundation

protocol AbstractErrorParser {
    func parse(_ result: Error) -> Error
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
