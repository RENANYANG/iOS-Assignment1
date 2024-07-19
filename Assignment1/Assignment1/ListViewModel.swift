//
//  ListViewModel.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ListItem] = []
    @Published var searchText: String = ""
    
    init() {
        // Populate items for each section
        items = [
            ListItem(title: "Text", icon: "textformat", section: .textInputOutput),
            ListItem(title: "Label", icon: "tag", section: .textInputOutput),
            ListItem(title: "TextField", icon: "textformat", section: .textInputOutput),
            ListItem(title: "SecureField", icon: "lock", section: .textInputOutput),
            ListItem(title: "TextArea", icon: "rectangle.and.text.magnifyingglass", section: .textInputOutput),
            ListItem(title: "Image", icon: "photo", section: .textInputOutput),
            ListItem(title: "Button", icon: "star", section: .controls),
            ListItem(title: "Menu", icon: "ellipsis", section: .controls),
            ListItem(title: "Link", icon: "link", section: .controls),
            ListItem(title: "Slider", icon: "slider.horizontal.3", section: .controls),
            ListItem(title: "Stepper", icon: "plusminus", section: .controls),
            ListItem(title: "Toggle", icon: "switch.2", section: .controls),
            ListItem(title: "Picker", icon: "chevron.down", section: .controls),
            ListItem(title: "DatePicker", icon: "calendar", section: .controls),
            ListItem(title: "ColorPicker", icon: "paintbrush", section: .controls),
            ListItem(title: "ProgressView", icon: "hourglass", section: .controls),
            ListItem(title: "HStack", icon: "h.square", section: .containerViews),
            ListItem(title: "VStack", icon: "v.square", section: .containerViews),
            ListItem(title: "ZStack", icon: "c.circle", section: .containerViews),
            ListItem(title: "Form", icon: "form", section: .containerViews),
            ListItem(title: "NavigationView", icon: "viewfinder", section: .containerViews),
            ListItem(title: "Alerts", icon: "exclamationmark.triangle", section: .containerViews),
            ListItem(title: "Sheets", icon: "window", section: .containerViews),
            ListItem(title: "Plain List", icon: "list.bullet", section: .list),
            ListItem(title: "Inset List", icon: "list.bullet.indent", section: .list),
            ListItem(title: "Grouped List", icon: "list.bullet.circle", section: .list),
            ListItem(title: "Inset Grouped List", icon: "list.bullet.rectangle", section: .list),
            ListItem(title: "Sidebar", icon: "sidebar.left", section: .list),
        ]
    }
    
    var filteredItems: [ListItem] {
        if searchText.isEmpty {
            return items
        } else {
            return items.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
}
