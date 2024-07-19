//
//  Models.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import Foundation

struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let icon: String
    let section: SectionType
}

enum SectionType: String, CaseIterable {
    case textInputOutput = "Text Input/Output"
    case controls = "Controls"
    case containerViews = "Container Views"
    case list = "List"
}
