//
//  Colors.swift
//  GBShop
//
//  Created by admin on 14.10.2022.
//

import UIKit
enum Resources {
    enum Colors {
        static let darkRed = UIColor(hexString: "D63832")
        static let red = UIColor.red
        static let lightRed = UIColor(hexString: "E9702B")
        
        static let explosionYellow = UIColor(hexString: "DED60C")
        
        static let textGray = UIColor(hexString: "BDBDBD")
        static let lightGray = UIColor(hexString: "F6F6F6")
        static let borderGray = UIColor(hexString: "E8E8E8")
        
        static let opacityBlack = UIColor(hexString: "000000", alpha: 0.8)
        
        static let black = UIColor.black
        static let white = UIColor.white
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
            static let catalog = "Каталог"
            static let basket = "Корзина"
            static let settings = "Настройки"
        }
        enum TabBarIconsNames {
            static let catalog = "list.bullet.rectangle"
            static let basket = "basket"
            static let settings = "gearshape.2"
        }
        enum ProductNames {
            static let garant_14_gz = "МУПТВ-14,5-ГЗ-ВД"
            static let garant_14_g = "МУПТВ-14,5-Г-В"
            static let garant_14_gz_1ex = "МУПТВ-14,5-ГЗ-ВД (РВ)"
            static let garant_14_gz_0ex = "МУПТВ-14,5-ГЗ-ВД (РО)"
            static let garant_50 = "МУПТВ-50-Г-ВД"
            static let garant_160_10 = "МУПТВ-160-10-Г-ВД"
            static let garant_160_40 = "МУПТВ-160-40-Г-ВД"
            static let garant_160_0ex = "МУПТВ-160-40-Г-ВД (РО)"
            
            static let garant_5 = "МПП \"Гарант-5\""
            static let garant_7 = "МПП \"Гарант-7\""
            static let garant_12 = "МПП \"Гарант-12\""
            static let garant_12kd = "МПП \"Гарант-12КД\""
            static let garant_d = "МПП \"Гарант-D\""
            static let garant_100 = "МПП \"Гарант-100-ВЗ\""
            static let garant_t1 = "МПП \"Гарант-Т1\""
            static let garant_100_d = "МПП \"Гарант-100-D-ВЗ\""
            static let garant_5_1ex = "МПП \"Гарант-5-ВЗ\""
            static let garant_7_1ex = "МПП \"Гарант-7-ВЗ\""
            static let garant_12_1ex = "МПП \"Гарант-12-ВЗ\""
            static let garant_12kd_1ex = "МПП \"Гарант-12КД-ВЗ\""
            
            static let biu = "БИУ"
            static let ib_dps = "ИБ-ДПС"
            static let ib_tl = "ИБ-ТЛ"
            static let ib_k = "ИБ-К"
        }
        enum ProductPictures {
            static let garant_14_gz = "garant_14_gz.png"
            static let garant_14_g = "garant_14_g.png"
            static let garant_14_gz_1ex = "garant_14_gz_1ex.png"
            static let garant_14_gz_0ex = "garant_14_gz_0ex.png"
            static let garant_50 = "garant_50.png"
            static let garant_160_10 = "garant_160_10.png"
            static let garant_160_40 = "garant_160_40.png"
            static let garant_160_0ex = "garant_160_40_0ex.png"
            
            static let garant_5 = "garant_5.png"
            static let garant_7 = "garant_7.png"
            static let garant_12 = "garant_12.png"
            static let garant_12kd = "garant_12kd.png"
            static let garant_d = "garant_d.png"
            static let garant_100 = "garant_100.png"
            static let garant_t1 = "garant_t1.png"
            static let garant_100_d = "garant_100_d.png"
            static let garant_5_1ex = "garant_5_1ex.png"
            static let garant_7_1ex = "garant_7_1ex.png"
            static let garant_12_1ex = "garant_12_1ex.png"
            static let garant_12kd_1ex = "garant_12kd_1ex.png"
            
            static let biu = "biu_old.png"
            static let ib_dps = "ib_dps.png"
            static let ib_tl = "ib_tl.png"
            static let ib_k = "ib_k.png"
        }
        enum UsageCase {
            static let fireClassA = "fire_class_a.png"
            static let fireClassB = "fire_class_b.png"
            static let fireClassC = "fire_class_c.png"
            static let fireClassD = "fire_class_d.png"
            static let fireClassE = "fire_class_e.png"
            static let explosionZone = "explosion_icon.png"
        }
    }
    
}

