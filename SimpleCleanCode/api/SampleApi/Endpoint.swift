//
//  SampleEndpoint.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 31/07/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//

import Foundation

enum EndPoint: RequestBuilder {
    
    case listPosts

    var urlRequest: URLRequest {
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
                else { preconditionFailure("Invalid URL format") }
            let request = URLRequest(url: url)
            return request
    }
}
