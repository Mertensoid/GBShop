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
            self.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    
    func configure() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = Resources.Colors.lightGray
        self.layer.borderColor = Resources.Colors.borderGray.cgColor
        self.layer.borderWidth = 2
        self.layer.cornerRadius = 10
        self.font = Resources.Fonts.helveticaRegular(with: 16)
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

