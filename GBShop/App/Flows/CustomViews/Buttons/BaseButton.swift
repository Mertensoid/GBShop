//
//  BaseButton.swift
//  GBShop
//
//  Created by admin on 15.10.2022.
//

import UIKit

class BaseButton: UIButton {
    
    let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String) {
        label.text = title
    }
    
    
}

@objc extension BaseButton {
    
    func addViews() {
        addSubview(label)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func configure() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
    }
}
