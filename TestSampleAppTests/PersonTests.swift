//
//  PersonTests.swift
//  TestSampleAppTests
//
//  Created by 永瀬拓也 on 2021/03/25.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Nimble
import XCTest
@testable import TestSampleApp

class PersonTests: XCTestCase {
    let members = [
        Person(name: "山田", age: 12),
        Person(name: "伊藤", age: 13),
        Person(name: "永瀬", age: 19),
        Person(name: "佐藤", age: 20)
    ]
    
    func testWithXCTAssert() {
        let teens = members.teens()
        
        XCTAssertEqual(teens.count, 2)
        XCTAssertTrue(teens.contains(members[1]))
        XCTAssertTrue(teens.contains(members[2]))
    }
    
    func testWithNimble() {
        let teens = members.teens()
        
        expect(teens).to(haveCount(2))
        expect(teens).to(contain(members[1], members[2]))
    }
}
