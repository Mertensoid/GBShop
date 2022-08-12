//
//  AppDelegate.swift
//  GBShop
//
//  Created by admin on 07.08.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let requestFactory = RequestFactory()

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            let auth = requestFactory.makeAuthRequestFatory()
            auth.login(userName: "Somebody", password: "mypassword") { response in
                switch response.result {
                case .success(let login):
                    print(login)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            return true
        }

    // MARK: UISceneSession Lifecycle

}

