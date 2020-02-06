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
    private var api: GreetingApi
    var getGreetingUseCase: GetGreetingUseCase
    var requester: NetworkRequester = NetworkRequester(baseUrl: "http://www.mocky.io/v2/")
    
    init() {
        api = GreetingApi(requester: self.requester)
        getGreetingUseCase = GetGreetingUseCase(repository: GreetingRepositoryRemote(api: self.api))
    }
}
