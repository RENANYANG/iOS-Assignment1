//
//  ListView.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack {
            List {
                Text("Plain List")
                Text("Inset List")
                Text("Grouped List")
                Text("Inset Grouped List")
                Text("Sidebar")
            }
        }
        .padding()
    }
}
