//
//  UserManagerTests.swift
//  TestSampleAppTests
//
//  Created by 永瀬拓也 on 2021/03/19.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import XCTest
@testable import TestSampleApp
import OHHTTPStubs
import OHHTTPStubsSwift

enum httpError: Error {
    case error
}

class UserManagerTests: XCTestCase {
    private var userManager: UserManager!
    
    override func setUp() {
        super.setUp()
        userManager = UserManager.shared
    }
    
    override func tearDown() {
        userManager = nil
        OHHTTPStubs.HTTPStubs.removeAllStubs()
        super.tearDown()
    }
    
    func testFetchUser() {
        let exp = expectation(description: #function)
        
        stub(condition: isHost("tanaka.com")) { url in
            let url = Bundle(for: UserManagerTests.self)
                .url(forResource: "User", withExtension: "json")!
            let data = try! Data(contentsOf: url)
            
//            return OHHTTPStubs.HTTPStubsResponse(error: httpError.error)
            return OHHTTPStubs.HTTPStubsResponse(data: data, statusCode: 200, headers: nil)
        }
        
        userManager.fetchUser { [weak self] in
            XCTAssertNotNil(self?.userManager.user)
            XCTAssertEqual(self?.userManager.user?.name, "A-Tanaka")
            
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 3.0)
    }
}
