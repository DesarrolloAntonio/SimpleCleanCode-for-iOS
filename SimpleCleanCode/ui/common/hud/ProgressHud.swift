//
//  ProgressHud.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 05/08/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//

import SwiftUI

struct ProgressHud: View {
    var body: some View {
        ZStack {
            BlurView()
            Indicator()
        }
        .frame(width: 90, height: 90)
        .cornerRadius(10)
    }
}

struct ProgressHud_Previews: PreviewProvider {
    static var previews: some View {
        ProgressHud()
    }
}
