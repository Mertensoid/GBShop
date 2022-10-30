//
//  ClearButton.swift
//  GBShop
//
//  Created by admin on 15.10.2022.
//

import UIKit

final class ClearButton: BaseButton {
    
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

extension ClearButton {
    
    override func addViews() {
        super.addViews()
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 30)
        ])
        
    }
    
    override func configure() {
        super.configure()
        label.textColor = Resources.Colors.darkRed
        label.font = Resources.Fonts.helveticaRegular(with: 16)
        self.layer.cornerRadius = 15
        self.makeTapWithButtonShadow(self)
        
    }
    @objc override func handleIn() {
        UIView.animate(withDuration: 0.2) {
            self.label.alpha = 0.55
        }
    }
    @objc override func handleOut() {
        UIView.animate(withDuration: 0.2) {
            self.label.alpha = 1
        }
    }
}
