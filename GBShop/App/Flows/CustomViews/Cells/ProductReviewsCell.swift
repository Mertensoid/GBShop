//
//  ProductReviewsCell.swift
//  GBShop
//
//  Created by admin on 26.10.2022.
//

import UIKit

final class ProductReviewsCell: BaseTableCell {
    
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

@objc extension ProductReviewsCell {
    override func addViews() {
        super.addViews()
    }
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([

        ])
    }
    override func configure() {
        super.configure()
    }
}

