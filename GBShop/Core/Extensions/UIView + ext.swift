//
//  UIView + ext.swift
//  GBShop
//
//  Created by admin on 15.10.2022.
//

import UIKit

extension UIView {
    
    enum GradientDirection {
        case topToBottom
        case bottomToTop
        case leftToRight
        case rightToLeft
    }
    
    @discardableResult
    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        self.layer.addSublayer(gradient)
        return gradient
    }

    @discardableResult
    func applyGradient(colours: [UIColor], locations: [NSNumber]) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.addSublayer(gradient)
        return gradient
    }
    
    @discardableResult
    func applyGradient(colours: [UIColor], gradientDirection: GradientDirection) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        switch gradientDirection {
        case .topToBottom:
            gradient.startPoint = CGPoint(x: 0.5, y: 0)
            gradient.endPoint = CGPoint(x: 0.5, y: 1)
        case .bottomToTop:
            gradient.startPoint = CGPoint(x: 0.5, y: 1)
            gradient.endPoint = CGPoint(x: 0.5, y: 0)
        case .leftToRight:
            gradient.startPoint = CGPoint(x: 0, y: 0.5)
            gradient.endPoint = CGPoint(x: 1, y: 0.5)
        case .rightToLeft:
            gradient.startPoint = CGPoint(x: 1, y: 0.5)
            gradient.endPoint = CGPoint(x: 0, y: 0.5)
        }
        
        self.layer.addSublayer(gradient)
        return gradient
    }
}
