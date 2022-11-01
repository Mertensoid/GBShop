//
//  CancelButton.swift
//  GBShop
//
//  Created by admin on 15.10.2022.
//

import UIKit

final class CancelButton: BaseButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        layoutViews()
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CancelButton {
    override func addViews() {
        super.addViews()
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    override func configure() {
        super.configure()
        label.textColor = Resources.Colors.darkRed
        label.font = Resources.Fonts.helveticaBold(with: 20)
        layer.cornerRadius = 30
        layer.borderWidth = 3
        layer.borderColor = Resources.Colors.darkRed.cgColor
        backgroundColor = Resources.Colors.white
        setOpacity()
        makeTapWithButtonShadow(self)
    }
}
