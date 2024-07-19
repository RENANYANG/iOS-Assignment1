//
//  ListView.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import SwiftUI

// View displaying various list styles
struct ListView: View {
    @StateObject private var viewModel = ListViewModel()

    var body: some View {
        List {
            ForEach(SectionType.allCases, id: \.self) { section in
                Section(header: Text(section.rawValue)) {
                    ForEach(viewModel.filteredItems.filter { $0.section == section }) { item in
                        HStack {
                            Image(systemName: item.icon)
                            Text(item.title)
                        }
                    }
                }
            }
        }
        .searchable(text: $viewModel.searchText)
        .navigationTitle("List")
    }
}

