//
//  DetailViewModel.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var item: ListItem
    
    init(item: ListItem) {
        self.item = item
    }
    
    var documentationURL: URL {
        let baseURL = "https://developer.apple.com/documentation/swiftui/"
        switch item.title {
        case "Button":
            return URL(string: baseURL + "button")!
        case "TextField":
            return URL(string: baseURL + "textfield")!
        // Add more cases as needed
        default:
            return URL(string: baseURL)!
        }
    }
}

