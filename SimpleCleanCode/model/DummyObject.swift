//
//  DummyObject.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 23/07/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//


struct DummyObject: Codable, Identifiable {
    
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    init(id: Int, userId: Int, title: String, body: String){
        self.id = id
        self.userId = userId
        self.title = title
        self.body = body
    }
}
