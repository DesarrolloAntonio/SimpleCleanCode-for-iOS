//
//  BlurView.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 05/08/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: .systemMaterialDark))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<BlurView>) {}
}
