//
//  StartButton.swift
//  GBShop
//
//  Created by admin on 14.10.2022.
//

import UIKit

final class ApplyButton: BaseButton {
    
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

extension ApplyButton {
    
    override func addViews() {
        super.addViews()
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 60)
        ])
        
    }
    
    override func configure() {
        super.configure()
        label.textColor = Resources.Colors.white
        label.font = Resources.Fonts.helveticaBold(with: 20)
        self.layer.cornerRadius = 30
        self.backgroundColor = Resources.Colors.darkRed
        self.setOpacity()
        self.makeTapWithButtonShadow(self)
    }
}
