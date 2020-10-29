//
//  SampleEndpoint.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 31/07/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//


import Foundation

enum APIError: Error {
    case decodingError
    case httpError(Int)
    case unknown
}

