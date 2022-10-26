//
//  ProductPriceCell.swift
//  GBShop
//
//  Created by admin on 26.10.2022.
//

import UIKit

final class ProductPriceCell: BaseTableCell {
    
    let priceHeaderLabel = UILabel()
    let priceLabel = UILabel()
    let tagsStackView = UIStackView()
    let hasView = ProductTagView(
        text: "В наличии",
        backgroundColor: .green,
        textColor: Resources.Colors.black)
    let newView = ProductTagView(
        text: "Новинка",
        backgroundColor: Resources.Colors.red,
        textColor: Resources.Colors.white)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension ProductPriceCell {
    override func addViews() {
        super.addViews()
        mainCellView.addSubview(priceHeaderLabel)
        mainCellView.addSubview(priceLabel)
        mainCellView.addSubview(tagsStackView)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            priceHeaderLabel.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            priceHeaderLabel.topAnchor.constraint(equalTo: mainCellView.topAnchor, constant: 10),
            
            priceLabel.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor, constant: 10),
            priceLabel.topAnchor.constraint(equalTo: priceHeaderLabel.bottomAnchor, constant: 0),
            
            tagsStackView.trailingAnchor.constraint(equalTo: mainCellView.trailingAnchor, constant: -10),
            tagsStackView.centerYAnchor.constraint(equalTo: mainCellView.centerYAnchor)
        ])
    }
    override func configure() {
        super.configure()
        priceHeaderLabel.translatesAutoresizingMaskIntoConstraints = false
        priceHeaderLabel.font = Resources.Fonts.helveticaRegular(with: 16)
        priceHeaderLabel.text = "Цена:"
        
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        priceLabel.font = Resources.Fonts.helveticaBold(with: 30)
        priceLabel.textColor = Resources.Colors.red
        priceLabel.text = "5600 ₽"
        
        tagsStackView.translatesAutoresizingMaskIntoConstraints = false
        tagsStackView.axis = .vertical
        tagsStackView.distribution = .fill
        tagsStackView.alignment = .trailing
        tagsStackView.spacing = 5
        tagsStackView.addArrangedSubview(newView)
        tagsStackView.addArrangedSubview(hasView)
    }
}
