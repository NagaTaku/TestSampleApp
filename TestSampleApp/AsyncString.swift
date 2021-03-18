//
//  AsyncString.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/16.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Foundation

struct AsyncString {
    static func asyncString(completion: ((String) -> ())?) {
        DispatchQueue.global().async {
            sleep(3)
            
            completion?("文字列A")
        }
    }
}
