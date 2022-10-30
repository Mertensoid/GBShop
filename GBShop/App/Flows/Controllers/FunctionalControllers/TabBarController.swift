//
//  TabBarController.swift
//  GBShop
//
//  Created by admin on 16.10.2022.
//

import UIKit

enum Tabs: Int {
    case catalog
    case basket
    case settings
}

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.darkRed
        tabBar.backgroundColor = Resources.Colors.white
        
        tabBar.layer.borderColor = Resources.Colors.borderGray.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let catalogController = CatalogViewController()
        let basketController = BasketViewController()
        let settingsController = SettingsViewController()
        
        let catalogNavigationController = UINavigationController(rootViewController: catalogController)
        catalogNavigationController.navigationBar.isHidden = true
        
        let basketNavigationController = UINavigationController(rootViewController: basketController)
        basketNavigationController.navigationBar.isHidden = true
        
        let settingsNavigationController = UINavigationController(rootViewController: settingsController)
        settingsNavigationController.navigationBar.isHidden = true
        
        
        catalogController.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBarHeaders.catalog,
            image: UIImage(systemName: Resources.Strings.TabBarIconsNames.catalog),
            tag: Tabs.catalog.rawValue)
        basketController.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBarHeaders.basket,
            image: UIImage(systemName: Resources.Strings.TabBarIconsNames.basket),
            tag: Tabs.basket.rawValue)
        settingsController.tabBarItem = UITabBarItem(
            title: Resources.Strings.TabBarHeaders.settings,
            image: UIImage(systemName: Resources.Strings.TabBarIconsNames.settings),
            tag: Tabs.settings.rawValue)
        
        setViewControllers([
            catalogNavigationController,
            basketNavigationController,
            settingsNavigationController
        ], animated: false)
    }
}
