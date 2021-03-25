//
//  Person.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/25.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Foundation

struct Person: Equatable {
    var name: String
    var age: Int
}

extension Sequence where Element == Person {
    func teens() -> [Person] {
        return self.filter { (13...19).contains($0.age) }
    }
}
