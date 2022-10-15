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
            let getGood = requestFactory.makeGetGoodRequestFactory()
            getGood.getGood(
                id: 123) { response in
                    switch response.result {
                    case .success(let getGood):
                        print(getGood)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            let getCatalog = requestFactory.makeGetCatalogRequestFactory()
            getCatalog.getCatalog(
                pageNumber: 1,
                idCategory: 1) { response in
                    switch response.result {
                    case .success(let getCatalog):
                        print(getCatalog)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            let addReview = requestFactory.makeAddReviewRequestFactory()
            addReview.addReview(
                userId: 123,
                text: "Хороший отзыв") { response in
                    switch response.result {
                    case .success(let addReview):
                        print(addReview)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            let deleteReview = requestFactory.makeDeleteReviewRequestFactory()
            deleteReview.deleteReview(commentId: 123) { response in
                    switch response.result {
                    case .success(let deleteReview):
                        print(deleteReview)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            let getReviewList = requestFactory.makeGetReviewListRequestFactory()
            getReviewList.getReviewList(productId: 123) { response in
                    switch response.result {
                    case .success(let getReviewList):
                        print(getReviewList)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            let addToBasket = requestFactory.makeAddToBasketRequestFactory()
            addToBasket.addToBasket(productId: 111, quantity: 1) { response in
                    switch response.result {
                    case .success(let addToBasket):
                        print(addToBasket)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            let deleteFromBasket = requestFactory.makeDeleteFromBasketRequestFactory()
            deleteFromBasket.deleteFromBasket(productId: 123) { response in
                    switch response.result {
                    case .success(let deleteFromBasket):
                        print(deleteFromBasket)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            let payBasket = requestFactory.makePayBasketRequestFactory()
            payBasket.payBasket(userId: 123) { response in
                    switch response.result {
                    case .success(let payBasket):
                        print(payBasket)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            return true
        }
}

