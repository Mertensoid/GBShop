//
//  Colors.swift
//  GBShop
//
//  Created by admin on 14.10.2022.
//

import UIKit
enum Resources {
    enum Colors {
        static var darkRed = UIColor(hexString: "D63832")
        static var lightRed = UIColor(hexString: "E9702B")
        
        static var explosionYellow = UIColor(hexString: "DED60C")
        
        static var textGray = UIColor(hexString: "BDBDBD")
        static var lightGray = UIColor(hexString: "F6F6F6")
        static var borderGray = UIColor(hexString: "E8E8E8")
        
        static var opacityBlack = UIColor(hexString: "000000", alpha: 0.8)
        
        static var black = UIColor.black
        static var white = UIColor.white
    }
    
    enum Fonts {
        
        static func helveticaRegular(with fontSize: CGFloat) -> UIFont {
            return UIFont(name: "Helvetica", size: fontSize) ?? UIFont()
        }
        static func helveticaBold(with fontSize: CGFloat) -> UIFont {
            return UIFont(name: "Helvetica-Bold", size: fontSize) ?? UIFont()
        }
    }
    
    enum Strings {
        enum TabBarHeaders {
            static var catalog = "Каталог"
            static var basket = "Корзина"
            static var settings = "Настройки"
        }
        enum TabBarIconsNames {
            static var catalog = "list.bullet.rectangle"
            static var basket = "basket"
            static var settings = "gearshape.2"
        }
    }
    
}

