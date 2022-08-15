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
            let auth = requestFactory.makeAuthRequestFactory()
            auth.login(userName: "Somebody", password: "mypassword") { response in
                switch response.result {
                case .success(let login):
                    print(login)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            let logout = requestFactory.makeLogoutRequestFactory()
            logout.logout(id: 123) { response in
                switch response.result {
                case .success(let logout):
                    print(logout)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            let registration = requestFactory.makeRegistrationRequestFactory()
            registration.registration(
                id: 1234,
                userName: "Max",
                password: "987654321",
                email: "mma@eternis.ru",
                gender: "m",
                creditCard: "1234-5678-9123-4567",
                biography: "Im cool") { response in
                    switch response.result {
                    case .success(let registration):
                        print(registration)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            let changeUserData = requestFactory.makeChangeUserDataRequestFactory()
            changeUserData.changeUserData(
                id: 1234,
                userName: "Max",
                password: "987654321",
                email: "mma@eternis.ru",
                gender: "m",
                creditCard: "1234-5678-9123-4567",
                biography: "Im cool") { response in
                    switch response.result {
                    case .success(let changeUserData):
                        print(changeUserData)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            return true
        }

    // MARK: UISceneSession Lifecycle

}

