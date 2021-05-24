//
//  SampleApiService.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 31/07/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//

import Foundation
import Combine
import UIKit

protocol ApiService {
    var apiService: APIService {get}
    func getData() -> AnyPublisher<[Post], APIError>
}

extension ApiService {
    
    func getData() -> AnyPublisher<[Post], APIError> {
        return apiService.request(with: EndPoint.listPosts )
            .eraseToAnyPublisher()
    }
}



