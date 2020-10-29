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
    func getData() -> AnyPublisher<[DummyObject], APIError>
}

extension ApiService {
    
    func getData() -> AnyPublisher<[DummyObject], APIError> {
        return apiService.request(with: EndPoint.listDummyObjects )
            .eraseToAnyPublisher()
    }
}



