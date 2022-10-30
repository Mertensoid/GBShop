//
//  ProductDescriptionCell.swift
//  GBShop
//
//  Created by admin on 26.10.2022.
//

import UIKit

final class ProductDescriptionCell: BaseTableCell {
    
    let nameTitle = UILabel()
    let typeTitle = UILabel()
    let locationTitle = UILabel()
    let squareTitle = UILabel()
    let volumeTitle = UILabel()
    let startTitle = UILabel()
    let currentTitle = UILabel()
    
    let nameLabel = UILabel()
    let typeLabel = UILabel()
    let locationLabel = UILabel()
    let squareLabel = UILabel()
    let volumeLabel = UILabel()
    let startLabel = UILabel()
    let currentLabel = UILabel()
    let descriptionLabel = UILabel()
    
    init(name: String, type: String, location: String, square: String, volume: String, start: String, current: String, description: String) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        
        nameLabel.text = name
        typeLabel.text = type
        locationLabel.text = location
        squareLabel.text = square
        volumeLabel.text = volume
        startLabel.text = start
        currentLabel.text = current
        descriptionLabel.text = description
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension ProductDescriptionCell {
    override func addViews() {
        super.addViews()
        mainCellView.addSubview(nameTitle)
        mainCellView.addSubview(typeTitle)
        mainCellView.addSubview(locationTitle)
        mainCellView.addSubview(squareTitle)
        mainCellView.addSubview(volumeTitle)
        mainCellView.addSubview(startTitle)
        mainCellView.addSubview(currentTitle)
        mainCellView.addSubview(nameLabel)
        mainCellView.addSubview(typeLabel)
        mainCellView.addSubview(locationLabel)
        mainCellView.addSubview(squareLabel)
        mainCellView.addSubview(volumeLabel)
        mainCellView.addSubview(startLabel)
        mainCellView.addSubview(currentLabel)
        mainCellView.addSubview(descriptionLabel)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
                
            nameTitle.topAnchor.constraint(equalTo: mainCellView.topAnchor, constant: 10),
            nameTitle.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            nameLabel.centerYAnchor.constraint(equalTo: nameTitle.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: nameTitle.trailingAnchor),
            
            typeTitle.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            typeTitle.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            typeLabel.centerYAnchor.constraint(equalTo: typeTitle.centerYAnchor),
            typeLabel.leadingAnchor.constraint(equalTo: typeTitle.trailingAnchor),
            
            locationTitle.topAnchor.constraint(equalTo: typeLabel.bottomAnchor),
            locationTitle.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            locationLabel.centerYAnchor.constraint(equalTo: locationTitle.centerYAnchor),
            locationLabel.leadingAnchor.constraint(equalTo: locationTitle.trailingAnchor),
            
            squareTitle.topAnchor.constraint(equalTo: locationLabel.bottomAnchor),
            squareTitle.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            squareLabel.centerYAnchor.constraint(equalTo: squareTitle.centerYAnchor),
            squareLabel.leadingAnchor.constraint(equalTo: squareTitle.trailingAnchor),
            
            volumeTitle.topAnchor.constraint(equalTo: squareLabel.bottomAnchor),
            volumeTitle.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            volumeLabel.centerYAnchor.constraint(equalTo: volumeTitle.centerYAnchor),
            volumeLabel.leadingAnchor.constraint(equalTo: volumeTitle.trailingAnchor),
            
            startTitle.topAnchor.constraint(equalTo: volumeLabel.bottomAnchor),
            startTitle.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            startLabel.centerYAnchor.constraint(equalTo: startTitle.centerYAnchor),
            startLabel.leadingAnchor.constraint(equalTo: startTitle.trailingAnchor),
            
            currentTitle.topAnchor.constraint(equalTo: startLabel.bottomAnchor),
            currentTitle.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            currentLabel.centerYAnchor.constraint(equalTo: currentTitle.centerYAnchor),
            currentLabel.leadingAnchor.constraint(equalTo: currentTitle.trailingAnchor),
            
            descriptionLabel.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: mainCellView.trailingAnchor, constant: -10),
            descriptionLabel.topAnchor.constraint(equalTo: currentTitle.bottomAnchor, constant: 10),
            descriptionLabel.bottomAnchor.constraint(equalTo: mainCellView.bottomAnchor, constant: -10)
        ])
    }
    override func configure() {
        super.configure()
        nameTitle.translatesAutoresizingMaskIntoConstraints = false
        nameTitle.text = "Наименование: "
        nameTitle.textColor = Resources.Colors.darkRed
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        typeTitle.translatesAutoresizingMaskIntoConstraints = false
        typeTitle.text = "Тип ОТВ: "
        typeTitle.textColor = Resources.Colors.darkRed
        
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        locationTitle.translatesAutoresizingMaskIntoConstraints = false
        locationTitle.text = "Тип размещения: "
        locationTitle.textColor = Resources.Colors.darkRed
        
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        squareTitle.translatesAutoresizingMaskIntoConstraints = false
        squareTitle.text = "Защищаемая площадь: "
        squareTitle.textColor = Resources.Colors.darkRed
        
        squareLabel.translatesAutoresizingMaskIntoConstraints = false
        
        volumeTitle.translatesAutoresizingMaskIntoConstraints = false
        volumeTitle.text = "Защищаемый объем: "
        volumeTitle.textColor = Resources.Colors.darkRed
        
        volumeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        startTitle.translatesAutoresizingMaskIntoConstraints = false
        startTitle.text = "Тип запуска: "
        startTitle.textColor = Resources.Colors.darkRed
        
        startLabel.translatesAutoresizingMaskIntoConstraints = false
        
        currentTitle.translatesAutoresizingMaskIntoConstraints = false
        currentTitle.text = "Пусковой ток: "
        currentTitle.textColor = Resources.Colors.darkRed
        
        currentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.numberOfLines = 0
        descriptionLabel.lineBreakMode = .byWordWrapping
    }
}
