//
//  ContentViewController.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/8/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import Foundation
import PromiseKit

struct ContentViewController {
    private var getGreetingUseCase: GetGreetingUseCase
    
    init(getGreetingUseCase: GetGreetingUseCase) {
        self.getGreetingUseCase = getGreetingUseCase
    }
    
    func getGreeting() -> Promise<String> {
        return getGreetingUseCase.execute().map { res in
            res.greeting
        }
    }
}
