//
//  TestCatalog.swift
//  GBShop
//
//  Created by admin on 21.10.2022.
//

import Foundation

struct TestCatalog {
    let productName: String
    let picture: String
    let mainProperty: String = "Характеристика 1"
    let secondaryProperty: String = "Характеристика 2"
    let usagePictures: [String]
}

class MyTestCatalog {
    let catalog = [
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_14_gz,
            picture: Resources.Strings.ProductPictures.garant_14_gz,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_14_g,
            picture: Resources.Strings.ProductPictures.garant_14_g,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_14_gz_1ex,
            picture: Resources.Strings.ProductPictures.garant_14_gz_1ex,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.explosionZone
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_14_gz_0ex,
            picture: Resources.Strings.ProductPictures.garant_14_gz_0ex,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.explosionZone
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_50,
            picture: Resources.Strings.ProductPictures.garant_50,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_160_10,
            picture: Resources.Strings.ProductPictures.garant_160_10,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_160_40,
            picture: Resources.Strings.ProductPictures.garant_160_40,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_160_0ex,
            picture: Resources.Strings.ProductPictures.garant_160_0ex,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.explosionZone
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_5,
            picture: Resources.Strings.ProductPictures.garant_5,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassE,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_7,
            picture: Resources.Strings.ProductPictures.garant_7,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassE,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_12,
            picture: Resources.Strings.ProductPictures.garant_12,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassC,
                Resources.Strings.UsageCase.fireClassE,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_12kd,
            picture: Resources.Strings.ProductPictures.garant_12kd,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassE,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_d,
            picture: Resources.Strings.ProductPictures.garant_d,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassD,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_5_1ex,
            picture: Resources.Strings.ProductPictures.garant_5_1ex,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassE,
                Resources.Strings.UsageCase.explosionZone
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_7_1ex,
            picture: Resources.Strings.ProductPictures.garant_7_1ex,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassE,
                Resources.Strings.UsageCase.explosionZone
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_12_1ex,
            picture: Resources.Strings.ProductPictures.garant_12_1ex,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassC,
                Resources.Strings.UsageCase.fireClassE,
                Resources.Strings.UsageCase.explosionZone
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_12kd_1ex,
            picture: Resources.Strings.ProductPictures.garant_12kd_1ex,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassE,
                Resources.Strings.UsageCase.explosionZone
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_t1,
            picture: Resources.Strings.ProductPictures.garant_t1,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassE,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_100,
            picture: Resources.Strings.ProductPictures.garant_100,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassE,
                Resources.Strings.UsageCase.explosionZone
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.garant_100_d,
            picture: Resources.Strings.ProductPictures.garant_100_d,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassD,
                Resources.Strings.UsageCase.explosionZone
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.biu,
            picture: Resources.Strings.ProductPictures.biu,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassC,
                Resources.Strings.UsageCase.fireClassE,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.ib_tl,
            picture: Resources.Strings.ProductPictures.ib_tl,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassC,
                Resources.Strings.UsageCase.fireClassE,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.ib_k,
            picture: Resources.Strings.ProductPictures.ib_k,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassC,
                Resources.Strings.UsageCase.fireClassE,
        ]),
        TestCatalog(
            productName: Resources.Strings.ProductNames.ib_dps,
            picture: Resources.Strings.ProductPictures.ib_dps,
            usagePictures: [
                Resources.Strings.UsageCase.fireClassA,
                Resources.Strings.UsageCase.fireClassB,
                Resources.Strings.UsageCase.fireClassC,
                Resources.Strings.UsageCase.fireClassE,
        ]),
        
        
    ]
}
