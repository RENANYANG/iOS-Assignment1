//
//  ContainerViewsView.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import SwiftUI

struct ContainerViewsView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<20) { index in
                        Text("Item \(index)")
                            .frame(width: 100, height: 50)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(5)
                    }
                }
            }
            ScrollView {
                VStack {
                    ForEach(0..<20) { index in
                        Text("Item \(index)")
                            .frame(height: 50)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(5)
                    }
                }
            }
            ZStack {
                Color.blue
                Text("ZStack Example")
                    .foregroundColor(.white)
            }
            Form {
                Section(header: Text("Form Section")) {
                    Text("Form Item 1")
                    Text("Form Item 2")
                }
            }
            NavigationView {
                Text("NavigationView Example")
            }
            .alert(isPresented: .constant(true)) {
                Alert(title: Text("Alert"), message: Text("This is an alert"))
            }
            .sheet(isPresented: .constant(true)) {
                Text("This is a sheet")
            }
        }
        .padding()
    }
}

