//
//  MainRow.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 23/07/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//

import SwiftUI

struct MainRow: View {
    
    var dummyObject: DummyObject

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(dummyObject.title)
                .lineLimit(nil)
                .font(.headline)
            Text(dummyObject.body)
                .foregroundColor(.secondary)
                .font(.footnote)
        }
    }
}


struct MainRow_Previews: PreviewProvider {
    static var previews: some View {
        MainRow(dummyObject: DummyObject(id: 1, userId: 1, title: "Title", body: "Body"))
    }
}
