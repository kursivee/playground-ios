//
//  GetGreetingUseCase.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/6/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import Foundation
import PromiseKit

struct GetGreetingUseCase {
    private var repository: GreetingRepository
    
    init(repository: GreetingRepository) {
        self.repository = repository
    }
    
    func execute() -> Promise<GreetingModel> {
        return repository.getGreeting().map { body in
            GreetingModel(greeting: body.greeting ?? "ERROR")
        }
    }
}
