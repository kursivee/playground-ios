//
//  Injector.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/5/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import Foundation

// I'm not sure how to do DI yet on swift so just messing around with this
class Injector: ObservableObject {
    var s: String = "Dependency Injection"
    private var repository: GreetingRepository = GreetingRepositoryLocal()
    var getGreetingUseCase: GetGreetingUseCase
    
    init() {
        getGreetingUseCase = GetGreetingUseCase(repository: self.repository)
    }
}
