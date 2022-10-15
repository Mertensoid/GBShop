//
//  PaddedTextFieald.swift
//  GBShop
//
//  Created by admin on 15.10.2022.
//
import UIKit

class PaddedTextField : UITextField {
    var insets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    var verticalPadding:CGFloat = 0
    var horizontalPadding:CGFloat = 0

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(
            x: bounds.origin.x + insets.left,
            y: bounds.origin.y + insets.top,
            width: bounds.size.width - (insets.left + insets.right),
            height: bounds.size.height - (insets.top + insets.bottom)
        );
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }
}
