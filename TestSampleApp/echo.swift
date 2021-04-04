//
//  echo.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/04/04.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Foundation

func echo(_ message: String, _ complition: @escaping (String) -> Void) {
    
    // 0.5秒後にmessageの末尾に"!!"を付与したものをコールバックで返す
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
        complition("\(message)!!")
    }
}
