//
//  GreetingRepositoryRemote.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/6/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import Foundation
import PromiseKit


struct GreetingRepositoryRemote: GreetingRepository {
    private let api: GreetingApi
    
    init(api: GreetingApi) {
        self.api = api
    }
    
    func getGreeting() -> Promise<GreetingEntity> {
        return self.api.getGreeting()
    }
}
