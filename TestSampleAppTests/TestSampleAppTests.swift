//
//  TestSampleAppTests.swift
//  TestSampleAppTests
//
//  Created by 永瀬拓也 on 2021/03/15.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import XCTest
@testable import TestSampleApp

class TestSampleAppTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testパスワードバリデーションの文字数() throws {
        XCTContext.runActivity(named: "数字が2文字以上含まれている") { (_) in
            XCTContext.runActivity(named: "合計7文字入力時") { _ in
                XCTAssertFalse(PasswordValidator.validate(password: "abcde12"))
            }
            
            XCTContext.runActivity(named: "合計8文字入力時") { _ in
                XCTAssertTrue(PasswordValidator.validate(password: "abcdef12"))
            }
            
            XCTContext.runActivity(named: "合計9文字入力時") { _ in
                XCTAssertTrue(PasswordValidator.validate(password: "abcdefg12"))
            }
        }
    }


}
