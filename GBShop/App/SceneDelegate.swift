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
            
//            let navigationController: UINavigationController = {
//                let vc = UINavigationController()
//                vc.navigationBar.isHidden = true
//                vc.navigationBar.tintColor = Resources.Colors.white
//                vc.navigationItem.titleView?.tintColor = Resources.Colors.white
//                vc.navigationBar.isTranslucent = true
//
//                let appearance = UINavigationBarAppearance()
//                appearance.configureWithOpaqueBackground()
//                appearance.shadowColor = .clear
//                appearance.backgroundColor = Resources.Colors.darkRed
//
//                UINavigationBar.appearance().standardAppearance = appearance
//                UINavigationBar.appearance().scrollEdgeAppearance = appearance
//
//                return vc
//            }()
            let startController = StartViewController()
//            navigationController.pushViewController(startController, animated: true)
            guard let windowScene = (scene as? UIWindowScene) else { return }
            window = UIWindow(frame: windowScene.coordinateSpace.bounds)
            window?.windowScene = windowScene
            window?.rootViewController = startController
            window?.makeKeyAndVisible()
    }
}
