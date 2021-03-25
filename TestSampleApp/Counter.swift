//
//  Conter.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/19.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Foundation

struct Counter {
    var count: Int = 0
    
    mutating func increment() {
        count += 1
    }
    
    mutating func reset(_ value: Int = 0) {
        count = value
    }
}
