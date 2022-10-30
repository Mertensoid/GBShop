//
//  BasketDataSingleton.swift
//  GBShop
//
//  Created by admin on 30.10.2022.
//

import Foundation

final class BasketDataSingleton {
    static let shared = BasketDataSingleton()

    private init() {}

    var basketData = [(GetGoodResult, Int)]()
    var totalPrice = 0.0
}
