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
    
    func updateTotalPrice() {
        var total = 0.0
        for item in basketData {
            total += Double(item.0.productPrice) * Double(item.1)
        }
        totalPrice = total
    }
}
