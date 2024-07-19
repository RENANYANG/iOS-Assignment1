//
//  TextInputOutputView.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import SwiftUI

struct TextInputOutputView: View {
    @State private var textFieldText: String = ""
    @State private var secureFieldText: String = ""
    @State private var textAreaText: String = "Text area"
    
    var body: some View {
        VStack {
            Text("This is a Text view")
            Label("This is a Label", systemImage: "tag")
            TextField("Enter text", text: $textFieldText)
            SecureField("Enter password", text: $secureFieldText)
            TextEditor(text: $textAreaText)
            Image(systemName: "photo")
        }
        .padding()
    }
}


