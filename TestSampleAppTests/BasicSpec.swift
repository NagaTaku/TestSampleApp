//
//  BasicSpec.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/19.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Quick
import Nimble
import XCTest

class BasicSpec: QuickSpec {
    override func spec() {

        describe("String#isEmpty") {
            context("when an empty string is given") {
                it("return true") {
                    XCTAssertTrue("".isEmpty)
                }
            }
            
            context("when string is blank") {
                it("return false") {
                    XCTAssertFalse(" ".isEmpty)
                }
            }
        }
    }
}
