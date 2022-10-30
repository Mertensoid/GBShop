//
//  DeleteButton.swift
//  GBShop
//
//  Created by admin on 30.10.2022.
//

import UIKit

class DeleteButton: UIButton {

    private let stackView = UIStackView()
    private let icon = UIImageView()
    private let label = UILabel()
    
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

@objc extension DeleteButton {
    func addViews() {
        addSubview(stackView)
        stackView.addArrangedSubview(icon)
        stackView.addArrangedSubview(label)
    }
    func layoutViews() {
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 33),
            
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
    func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = Resources.Colors.white
        layer.borderColor = Resources.Colors.darkRed.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 5
        self.makeTapWithButtonShadow(self)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .leading
        stackView.spacing = 5
        stackView.isUserInteractionEnabled = false
        
        label.text = "Удалить"
        label.font = Resources.Fonts.helveticaRegular(with: 16)
        label.textColor = Resources.Colors.black
        label.textAlignment = .left
        
        icon.image = UIImage(systemName: "delete.left")
        icon.tintColor = Resources.Colors.darkRed
    }
    
    override func handleIn() {
        UIView.animate(withDuration: 0.2) {
            self.label.alpha = 0.55
            self.icon.alpha = 0.55
        }
    }
    override func handleOut() {
        UIView.animate(withDuration: 0.2) {
            self.label.alpha = 1
            self.icon.alpha = 1
        }
    }
    
}
