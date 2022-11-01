//
//  AddToBasketButton.swift
//  GBShop
//
//  Created by admin on 28.10.2022.
//

import UIKit

final class AddToBasketButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutViews()
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension AddToBasketButton {
    func layoutViews() {
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    func configure() {
        layer.cornerRadius = 5
        backgroundColor = Resources.Colors.darkRed
        setOpacity()
        makeTapWithButtonShadow(self)
    }
}
