//
//  ResponseCodable.swift
//  GBShopTests
//
//  Created by admin on 13.08.2022.
//

import XCTest
import Alamofire

class ResponseCodable: XCTestCase {
    
    let expectation = XCTestExpectation(description: "Download https://failURL")
    var errorParser: ErrorParserStub!
    
    override func setUp() {
        super.setUp()
        errorParser = ErrorParserStub()
    }
    override func tearDown() {
        super.tearDown()
        errorParser = nil
    }
    
    func testShoudDownloadAndParse() {
        
        //Я так понимаю, данные в методичке устаревшие, а именно .responseCodable не существует, поэтому попытался сделать по документации на Alamofire
        //На сколько это правильно, в чем разница между .response и .responseDecodable
        
        AF
            .request("https://jsonplaceholder.typicode.com/posts/1")
            .response { resp in
                switch resp.result {
                case .success(_): break
                case .failure:
                    XCTFail()
                }
                self.expectation.fulfill()
            }
        wait(for: [expectation], timeout: 10.0)
        
//            .responseDecodable(of: ErrorParserStub.self) { resp in                <- это не работает
//                switch resp.result {
//                case .success(_): break
//                case .failure:
//                    XCTFail()
//                }
//            }
    }
}
