//
//  BuyButton.swift
//  GBShop
//
//  Created by admin on 30.10.2022.
//

import UIKit

final class BuyButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutViews()
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BuyButton {
    func layoutViews() {
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        setTitle("К оплате", for: .normal)
        titleLabel?.font = Resources.Fonts.helveticaBold(with: 24)
        titleLabel?.textColor = Resources.Colors.white
        titleLabel?.textAlignment = .center
        backgroundColor = Resources.Colors.darkRed
        layer.borderColor = Resources.Colors.darkRed.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 5
        setOpacity()
        makeTapWithButtonShadow(self)
    }
}
