//
//  ContentView.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 23/07/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//

import SwiftUI
import Combine

struct MainContentView: View {
    
    @ObservedObject private var viewModel = MainViewModel()
    
    var body: some View {
        NavigationView {
            ZStack{
                List(viewModel.dummyObjects) { dummyObject in
                    MainRow(dummyObject: dummyObject)
                }
                .blur(radius: self.viewModel.loading ? 3.0 : 0.0)
                ProgressHud()
                    .opacity( self.viewModel.loading ? 1.0: 0.0)
            }.alert(isPresented: viewModel.isPresentingAlert, content: {
                Alert(title: Text(viewModel.alertData?.title ?? ""), message: Text(self.viewModel.alertData?.message ?? ""), dismissButton: .default(Text("OK")))
            })
                .navigationBarTitle("SimpleCleanCode")
                .onAppear() { self.viewModel.getDataFromServer() }
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}

