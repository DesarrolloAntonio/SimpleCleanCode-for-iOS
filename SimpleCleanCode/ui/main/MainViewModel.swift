//
//  MainViewModel.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 23/07/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class MainViewModel: ObservableObject, ApiService {
    
    var apiService: APIService
    private var cancellable: AnyCancellable?
    
    @Published private(set) var loading = false
    @Published private(set) var activeError: String?
    @Published private(set) var dummyObjects = [DummyObject]()
    @Published private(set) var alertData = (title: String, message: String)?.none

    var isPresentingAlert: Binding<Bool> {
        return Binding<Bool>(get: {
            return self.alertData != nil
        }, set: { newValue in
            guard !newValue else { return }
            self.alertData = nil
        })
    }
    
    init(apiService: APIService = APISession()) {
        self.apiService = apiService
    }

    func getDataFromServer()  {
        self.loading = true
        cancellable = self.getData()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                print(".sink() received the completion", String(describing: completion))
                self.loading = false
                switch completion {
                case .finished:
                    break
                case .failure(let anError):
                    self.alertData = (title: "Error", message: anError.localizedDescription)
                    print("received error: ", anError)
                }
            }, receiveValue: { someValue in
                self.loading = false
                self.dummyObjects = someValue
                self.alertData = (title: "Success", message: "Data loaded successfully")
            })
    }
}
