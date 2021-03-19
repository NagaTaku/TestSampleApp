//
//  UserManager.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/18.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Foundation

class UserManager {
    static let shared = UserManager()
    private init() {}
    
    private(set) var user: User?
    
    func fetchUser(completion: @escaping (() -> Void)) {
        let apiManager = APIManager()
        apiManager.fetchUser { [weak self] result in
            switch result {
            case .success(let user):
                self?.user = user
                completion()
            case .failure(let error):
                print(error)
                completion()
            }
        }
    }
}
