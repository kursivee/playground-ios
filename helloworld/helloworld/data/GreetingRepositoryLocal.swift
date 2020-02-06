//
//  GreetingRepositoryLocal.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/6/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import Foundation

class GreetingRepositoryLocal: GreetingRepository {
    func getGreeting() -> GreetingEntity {
        return GreetingEntity(greeting: "Hello from local")
    }
}
