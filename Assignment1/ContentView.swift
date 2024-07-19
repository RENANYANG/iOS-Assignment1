//
//  ContentView.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import SwiftUI

// Main view displaying a list of components
struct ContentView: View {
    @StateObject private var viewModel = ListViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(SectionType.allCases, id: \.self) { section in
                    Section(header: Text(section.rawValue)) {
                        ForEach(viewModel.filteredItems.filter { $0.section == section }) { item in
                            NavigationLink(destination: DetailView(item: item)) {
                                HStack {
                                    Image(systemName: item.icon)
                                    Text(item.title)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Components")
            .searchable(text: $viewModel.searchText)
        }
    }
}



