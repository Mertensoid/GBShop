//
//  SceneDelegate.swift
//  GBShop
//
//  Created by admin on 14.10.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions) {
            
            let navigationController: UINavigationController = {
                let vc = UINavigationController()
                vc.navigationBar.isHidden = true
                vc.navigationBar.tintColor = Resources.Colors.white
                vc.navigationItem.titleView?.tintColor = Resources.Colors.white
                vc.navigationBar.backgroundColor = Resources.Colors.darkRed
                return vc
            }()
            let startController = StartViewController()
            navigationController.pushViewController(startController, animated: true)
            guard let windowScene = (scene as? UIWindowScene) else { return }
            window = UIWindow(frame: windowScene.coordinateSpace.bounds)
            window?.windowScene = windowScene
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
    }
}
