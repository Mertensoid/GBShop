//
//  RequestFactory.swift
//  GBShop
//
//  Created by admin on 12.08.2022.
//

import Foundation
import Alamofire

/// Фабрика запросов
class RequestFactory {
    /// Создание обработчика ошибок
    /// - Returns: экземпляр обработчика ошибок
    func makeErrorParser() -> AbstractErrorParser {
        return ErrorParser()
    }
    
    lazy var commonSession: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        configuration.headers = .default
        let manager = Session(configuration: configuration)
        return manager
    }()
    
    let sessionQueue = DispatchQueue.global(qos: .utility)
    /// Создание запроса логина
    /// - Returns: запрос логина
    func makeAuthRequestFactory() -> AuthRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса выхода
    /// - Returns: запрос выхода
    func makeLogoutRequestFactory() -> LogoutRequestFactory {
        let errorParser = makeErrorParser()
        return Logout(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса регистрации
    /// - Returns: запрос регистрации
    func makeRegistrationRequestFactory() -> RegistrationRequestFactory {
        let errorParser = makeErrorParser()
        return Registration(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса изменения параметров пользователя
    /// - Returns: запрос изменения параметров пользователя
    func makeChangeUserDataRequestFactory() -> ChangeUserDataRequestFactory {
        let errorParser = makeErrorParser()
        return ChangeUserData(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса на получение товара
    /// - Returns: запрос на получение товара
    func makeGetGoodRequestFactory() -> GetGoodRequestFactory {
        let errorParser = makeErrorParser()
        return GetGood(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса на получение каталога
    /// - Returns: запрос на получение каталога
    func makeGetCatalogRequestFactory() -> GetCatalogRequestFactory {
        let errorParser = makeErrorParser()
        return GetCatalog(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса на добавление отзыва
    /// - Returns: запрос на добавление отзыва
    func makeAddReviewRequestFactory() -> AddReviewRequestFactory {
        let errorParser = makeErrorParser()
        return AddReview(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса на удаление отзыва
    /// - Returns: запрос на удаление отзыва
    func makeDeleteReviewRequestFactory() -> DeleteReviewRequestFactory {
        let errorParser = makeErrorParser()
        return DeleteReview(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса на получения списка отзывов
    /// - Returns: запрос на получение списка отзывов
    func makeGetReviewListRequestFactory() -> GetReviewListRequestFactory {
        let errorParser = makeErrorParser()
        return GetReviewList(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса на добавление товара в корзину
    /// - Returns: запрос на добавление товара в корзину
    func makeAddToBasketRequestFactory() -> AddToBasketRequestFactory {
        let errorParser = makeErrorParser()
        return AddToBasket(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса на удаление товара из корзины
    /// - Returns: запрос на удаление товара из корзины
    func makeDeleteFromBasketRequestFactory() -> DeleteFromBasketRequestFactory {
        let errorParser = makeErrorParser()
        return DeleteFromBasket(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
    /// Создание запроса на оплату корзины
    /// - Returns: запрос на оплату корзины
    func makePayBasketRequestFactory() -> PayBasketRequestFactory {
        let errorParser = makeErrorParser()
        return PayBasket(
            errorParser: errorParser,
            sessionManager: commonSession,
            queue: sessionQueue)
    }
}

