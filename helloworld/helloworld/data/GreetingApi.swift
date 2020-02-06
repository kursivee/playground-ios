//
//  GreetingApi.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/6/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import Foundation
import PromiseKit

struct GreetingApi {
    private var requester: NetworkRequester
    
    init(requester: NetworkRequester) {
        self.requester = requester
    }
    
    func getGreeting() -> Promise<GreetingEntity> {
        return Promise { promise in
            var greeting = "Error"
            self.requester.get(path: "5e3c043c300000223c214a9f").responseJSON() { response in
                switch response.result {
                    case .success(let value):
                        if let JSON = value as? [String: Any] {
                            greeting = JSON["greeting"] as! String
                         
                        }
                    case .failure(let error): print(error)
                }
                promise.resolve(GreetingEntity(greeting: greeting), nil)
            }
        }
    }
}
