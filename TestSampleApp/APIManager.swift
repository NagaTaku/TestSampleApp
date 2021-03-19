//
//  APIManager.swift
//  TestSampleApp
//
//  Created by 永瀬拓也 on 2021/03/18.
//  Copyright © 2021 NagaseTakuya. All rights reserved.
//

import Foundation

class APIManager {
    func fetchUser(completion: @escaping ((Result<User, Error>) -> Void)) {
        let url = URL(string: "https://tanaka.com/user")!
        let request = URLRequest(url: url)
        
        let session = URLSession.shared.dataTask(with: request)
        { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            do {
                let user = try decoder.decode(User.self, from: data)
                completion(.success(user))
            } catch {
                completion(.failure(error))
            }
        }
        session.resume()
    }
}
