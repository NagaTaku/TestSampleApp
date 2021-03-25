//
//  CounterSpec.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/19.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Quick
import XCTest
@testable import TestSampleApp

class CounterSpec: QuickSpec {
    override func spec() {
        describe("Counter") {
            var counter: Counter!
            
            // このbeforeEachが先に呼ばれる
            beforeEach {
                counter = Counter()
            }
            
            it("初期値は0であること") {
                XCTAssertEqual(counter.count, 0)
            }
            
            describe("#increment") {
                context("値を更新したあとにインクリメント") {
                    // このbeforeEachがあとに呼ばれる
                    beforeEach {
                        counter.reset(10)
                    }
                    context("1回だけ呼び出し") {
                        it("countが11になること") {
                            counter.increment()
                            XCTAssertEqual(counter.count, 11)
                        }
                    }
                    
                    context("2回だけ呼び出し") {
                        it("countが12になること") {
                            counter.increment()
                            counter.increment()
                            XCTAssertEqual(counter.count, 12)
                        }
                    }
                }
            }
        }
    }
}
