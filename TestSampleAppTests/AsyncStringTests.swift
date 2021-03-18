//
//  AsyncStringTests.swift
//  TestSampleAppTests
//
//  Created by 永瀬拓也 on 2021/03/16.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import XCTest
@testable import TestSampleApp

class AsyncStringTests: XCTestCase {
    func testAsyncString() {
        let exp = XCTestExpectation(description: "Async String")
        
        AsyncString.asyncString { string in
            XCTAssertEqual(string, "文字列A")
            exp.fulfill()
        }
        
        wait(for: [exp], timeout: 5.0)
    }
}
