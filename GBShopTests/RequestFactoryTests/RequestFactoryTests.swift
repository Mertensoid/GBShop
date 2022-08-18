//
//  RequestFactoryTests.swift
//  GBShopTests
//
//  Created by admin on 15.08.2022.
//

import XCTest

class RequestFactoryTests: XCTestCase {

    var requestFactory: RequestFactoryStub!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        requestFactory = RequestFactoryStub()
        
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        requestFactory = nil
    }

    func testMakeErrorParserShouldNotNil() throws {
        XCTAssertNotNil(requestFactory.makeErrorParser)
    }
    
    func testMakeLogoutRequestFactoryShouldNotNil() throws {
        XCTAssertNotNil(requestFactory.makeLogoutRequestFactory)
    }
    
    func testMakeAuthRequestFactoryShouldNotNil() throws {
        XCTAssertNotNil(requestFactory.makeAuthRequestFactory)
    }
    
    func testRegistrationRequestFactoryParserShouldNotNil() throws {
        XCTAssertNotNil(requestFactory.makeRegistrationRequestFactory)
    }
    
    func testMakeChangeUserDataRequestFactoryShouldNotNil() throws {
        XCTAssertNotNil(requestFactory.makeChangeUserDataRequestFactory)
    }
    
    func testMakeGetGoodRequestFactoryShouldNotNil() throws {
        XCTAssertNotNil(requestFactory.makeGetGoodRequestFactory)
    }
    
    func testMakeGetCatalogRequestFactoryShouldNotNil() throws {
        XCTAssertNotNil(requestFactory.makeGetCatalogRequestFactory)
    }

}
