//
//  MainRow.swift
//  SimpleCleanCode
//
//  Created by Antonio Corrales on 23/07/2020.
//  Copyright © 2020 DesarrolloManzana. All rights reserved.
//

import SwiftUI

struct MainRow: View {
    
    var post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(post.title)
                .lineLimit(nil)
                .font(.headline)
            Text(post.body)
                .foregroundColor(.secondary)
                .font(.footnote)
        }
    }
}


struct MainRow_Previews: PreviewProvider {
    static var previews: some View {
        MainRow(post: Post(id: 1, userId: 1, title: "Title", body: "Body"))
    }
}
