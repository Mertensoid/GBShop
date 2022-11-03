//
//  ProductPictureCell.swift
//  GBShop
//
//  Created by admin on 26.10.2022.
//

import UIKit

final class ProductPictureCell: BaseTableCell {
    
    let productPicture = UIImageView()
    
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

@objc extension ProductPictureCell {
    override func addViews() {
        super.addViews()
        mainCellView.addSubview(productPicture)
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            productPicture.leadingAnchor.constraint(equalTo: mainCellView.leadingAnchor),
            productPicture.trailingAnchor.constraint(equalTo: mainCellView.trailingAnchor),
            productPicture.topAnchor.constraint(equalTo: mainCellView.topAnchor),
            productPicture.bottomAnchor.constraint(equalTo: mainCellView.bottomAnchor),
        ])
    }
    override func configure() {
        super.configure()
        productPicture.translatesAutoresizingMaskIntoConstraints = false
        productPicture.image = UIImage(named: "garant_5")
        productPicture.contentMode = .scaleAspectFit
    }
}
