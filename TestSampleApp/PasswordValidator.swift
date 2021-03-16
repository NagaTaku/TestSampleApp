//
//  passwordValidator.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/15.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Foundation

class PasswordValidator {
    static func validate(password: String) -> Bool {
        if password.count <= 7 {
            return false
        }
        
        let numString = password.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        return numString.count >= 2
    }
}
