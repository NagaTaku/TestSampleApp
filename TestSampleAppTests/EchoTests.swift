//
//  EchoTests.swift
//  TestSampleAppTests
//
//  Created by 永瀬拓也 on 2021/04/04.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Nimble
import XCTest
import Quick
@testable import TestSampleApp

class EchoSpec: QuickSpec {
    override func spec() {
        it("waitUntil") {
            waitUntil { done in
                echo("Hello") { message in
                    expect(message).to(equal("Hello!!"))

                    done()
                }
            }
        }
    }
}
//
//import Nimble
//import XCTest
//@testable import TestSampleApp
//
//class EchoTests: XCTestCase {
//    func wait() {
//        waitUntil { done in
//            echo("Hello") { message in
//                expect(message).to(equal("Hello!!"))
//
//                done()
//            }
//        }
//    }
//}
