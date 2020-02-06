//
//  NetworkRequester.swift
//  helloworld
//
//  Created by Mark Feliciano on 2/6/20.
//  Copyright © 2020 Mark Feliciano. All rights reserved.
//

import Foundation
import Alamofire

struct NetworkRequester {
    private var baseUrl: String
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    func get(path: String) -> DataRequest {
        return AF.request(baseUrl + path)
    }
}
