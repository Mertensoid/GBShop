//
//  SettingsCell.swift
//  GBShop
//
//  Created by admin on 20.10.2022.
//

import UIKit

final class SettingsCell: UITableViewCell {
    private let title = UILabel()
    private let textField = BaseTextField()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        layoutViews()
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setTitle(_ title: String) {
        self.title.text = title
    }
}

@objc extension SettingsCell {
    func addViews(){
        self.contentView.addSubview(title)
        self.contentView.addSubview(textField)
    }
    func layoutViews(){
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            textField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            textField.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
            
            title.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
        ])
    }
    func configure(){
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = Resources.Fonts.helveticaRegular(with: 16)
        title.textAlignment = .left
        title.textColor = Resources.Colors.textGray
        
        textField.translatesAutoresizingMaskIntoConstraints = false
    }
}
