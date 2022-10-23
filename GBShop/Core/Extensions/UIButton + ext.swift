//
//  UIButton + ext.swift
//  GBShop
//
//  Created by admin on 16.10.2022.
//

import UIKit

extension UIButton {
    
    func setOpacity() {
        self.layer.shadowColor = Resources.Colors.opacityBlack.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 3.0
        self.layer.masksToBounds = false
    }
    func removeOpacity() {
        self.layer.shadowColor = .none
        self.layer.shadowOffset = .zero
        self.layer.shadowOpacity = .zero
        self.layer.shadowRadius = .zero
        self.layer.masksToBounds = true
    }
    
    func makeTapWithButtonShadow(_ button: UIButton) {
        button.addTarget(
            self,
            action: #selector(handleIn),
            for: [
                .touchDown,
                .touchDragInside
            ])
        button.addTarget(
            self,
            action: #selector(handleOut),
            for: [
                .touchUpInside,
                    .touchUpOutside,
                    .touchDragExit,
                    .touchCancel,
                    .touchDragOutside
            ])
    }
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.1) {
            self.removeOpacity()
        }
    }
    @objc func handleOut() {
        UIView.animate(withDuration: 0.1) {
            self.setOpacity()
        }
    }
    
}
