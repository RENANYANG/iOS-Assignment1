//
//  DetailView.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import SwiftUI
import SafariServices

struct DetailView: View {
    @StateObject private var viewModel: DetailViewModel
    @State private var showSafariView = false
    
    init(item: ListItem) {
        _viewModel = StateObject(wrappedValue: DetailViewModel(item: item))
    }
    
    var body: some View {
        VStack {
            Text(viewModel.item.title)
                .font(.largeTitle)
                .padding()
            
            Text("Here you can display information about \(viewModel.item.title).")
                .padding()
            
            Button(action: {
                showSafariView.toggle()
            }) {
                Text("View Documentation")
                    .foregroundColor(.blue)
            }
            .padding()
            .sheet(isPresented: $showSafariView) {
                SafariView(url: viewModel.documentationURL)
            }
        }
        .navigationTitle(viewModel.item.title)
    }
}

struct SafariView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: Context) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {}
}

