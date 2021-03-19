//
//  LoggerProtocol.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/18.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Foundation

protocol LoggerProtocol {
    func sendLog(massage: String)
}

class mockLogger: LoggerProtocol {
    var invokedSendLog = false
    var invokedSendLogCount = 0
    var invokedSendLogParameters: (massage: String, Void)?
    var invokedSendLogParametersList = [(massage: String, Void)]()

    func sendLog(massage: String) {
        invokedSendLog = true
        invokedSendLogCount += 1
        invokedSendLogParameters = (massage, ())
        invokedSendLogParametersList.append((massage, ()))
    }
}
