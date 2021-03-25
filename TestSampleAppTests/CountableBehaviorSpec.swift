//
//  CountableBehaviorSpec.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/19.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Quick
import XCTest
@testable import TestSampleApp

class CountableBehavior: Behavior<Int> {
    override static func spec(_ aContext: @escaping () -> Int) {
        var counter: Counter!
        var initial: Int!
        
        beforeEach {
            initial = aContext()
            
            counter = Counter()
            counter.reset(initial)
            counter.increment()
            counter.increment()
        }
        
        it("incrementを2回呼び出したら、現在の値+2されること") {
            XCTAssertEqual(counter.count, initial + 2)
        }
    }
}


class CountableBehaviorSpec: QuickSpec {
    override func spec() {
        describe("Counter") {
            itBehavesLike(CountableBehavior.self) { 0 }
            itBehavesLike(CountableBehavior.self) { 1 }
        }
    }
}
