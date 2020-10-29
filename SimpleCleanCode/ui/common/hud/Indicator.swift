//
//  Indicator.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 05/08/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//

import SwiftUI

struct Indicator : UIViewRepresentable {
  
  func makeUIView(context: UIViewRepresentableContext<Indicator>) -> UIActivityIndicatorView {
    let indicator = UIActivityIndicatorView(style: .large)
    indicator.color = UIColor.white
    return indicator
  }
  
  func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Indicator>) {
      uiView.startAnimating()
  }
}

