//
//  SampleEndpoint.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 31/07/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//


import Foundation
import Combine
import UIKit

protocol APIService {
    func request<T: Decodable>(with builder: RequestBuilder) -> AnyPublisher<T, APIError>
    func requestImage(with url: String) -> AnyPublisher<UIImage, APIError>
}
