//
//  SmallTextField.swift
//  GBShop
//
//  Created by admin on 21.10.2022.
//

import UIKit

class SmallTextField: UITextField {
    var insets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
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

@objc extension SmallTextField {
    func addViews() {}
    func layoutViews() {
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = Resources.Colors.lightGray
        layer.borderColor = Resources.Colors.borderGray.cgColor
        layer.borderWidth = 2
        layer.cornerRadius = 10
        font = Resources.Fonts.helveticaRegular(with: 16)
    }
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(
            x: bounds.origin.x + insets.left,
            y: bounds.origin.y + insets.top,
            width: bounds.size.width - (insets.left + insets.right),
            height: bounds.size.height - (insets.top + insets.bottom)
        );
    }
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
}

