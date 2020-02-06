//
//  GetGreetingUseCase.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/6/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import Foundation

struct GetGreetingUseCase {
    private var repository: GreetingRepository
    
    init(repository: GreetingRepository) {
        self.repository = repository
    }
    
    func execute() -> GreetingModel {
        return GreetingModel(greeting: repository.getGreeting().greeting ?? "Error")
    }
}
