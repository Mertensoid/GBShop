//
//  CatalogCell.swift
//  GBShop
//
//  Created by admin on 21.10.2022.
//

import UIKit

final class CatalogCell: BaseTableCell {
    private let image = UIImageView(frame: CGRect(x: 10, y: 10, width: 105, height: 105))
    private let productNameTitle = UILabel()
    private let mainPropertyTitle = UILabel()
    private let secondaryPropertyTitle = UILabel()
    private let stackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        layoutViews()
        configure()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configureData(name: String, picture: String, mainProperty: String, secondaryProperty: String, usage: [String]) {
        productNameTitle.text = name
        image.image = UIImage(named: picture)
        mainPropertyTitle.text = mainProperty
        secondaryPropertyTitle.text = secondaryProperty
        for usage in usage {
            stackView.addArrangedSubview(UIImageView(image: UIImage(named: usage)))
        }
    }
}

@objc extension CatalogCell {
    override func addViews() {
        super.addViews()
        mainCellView.addSubview(image)
        mainCellView.addSubview(productNameTitle)
        mainCellView.addSubview(mainPropertyTitle)
        mainCellView.addSubview(secondaryPropertyTitle)
        mainCellView.addSubview(stackView)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            productNameTitle.trailingAnchor.constraint(equalTo: mainCellView.trailingAnchor, constant: -10),
            productNameTitle.topAnchor.constraint(equalTo: mainCellView.topAnchor, constant: 10),
            
            mainPropertyTitle.trailingAnchor.constraint(equalTo: mainCellView.trailingAnchor, constant: -10),
            mainPropertyTitle.topAnchor.constraint(equalTo: productNameTitle.bottomAnchor, constant: 5),
            
            secondaryPropertyTitle.trailingAnchor.constraint(equalTo: mainCellView.trailingAnchor, constant: -10),
            secondaryPropertyTitle.topAnchor.constraint(equalTo: mainPropertyTitle.bottomAnchor, constant: 5),
            
            stackView.trailingAnchor.constraint(equalTo: mainCellView.trailingAnchor, constant: -10),
            stackView.bottomAnchor.constraint(equalTo: mainCellView.bottomAnchor, constant: -10),
        ])
    }
    override func configure() {
        super.configure()
        productNameTitle.translatesAutoresizingMaskIntoConstraints = false
        productNameTitle.font = Resources.Fonts.helveticaBold(with: 16)
        
        mainPropertyTitle.translatesAutoresizingMaskIntoConstraints = false
        mainPropertyTitle.font = Resources.Fonts.helveticaRegular(with: 16)
        
        secondaryPropertyTitle.translatesAutoresizingMaskIntoConstraints = false
        secondaryPropertyTitle.font = Resources.Fonts.helveticaRegular(with: 16)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .trailing
        stackView.spacing = 5
    }
}
