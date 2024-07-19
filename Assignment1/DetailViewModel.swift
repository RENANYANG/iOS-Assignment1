//
//  DetailViewModel.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import Foundation

// ViewModel for the DetailView to handle component details and documentation
class DetailViewModel: ObservableObject {
    @Published var item: ListItem
    
    init(item: ListItem) {
        self.item = item
    }
    
    // Returns the documentation URL based on the component type
    var documentationURL: URL {
        let baseURL = "https://developer.apple.com/documentation/swiftui/"
        let componentURL: String
        
        switch item.title {
        case "Button":
            componentURL = "button"
        case "Label":
            componentURL = "label"
        case "TextField":
            componentURL = "textfield"
        case "SecureField":
            componentURL = "securefield"
        case "TextArea":
            componentURL = "texteditor"  // Note: SwiftUI does not have a TextArea; TextEditor is used instead
        case "Image":
            componentURL = "image"
        case "Menu":
            componentURL = "menu"
        case "Link":
            componentURL = "link"
        case "Slider":
            componentURL = "slider"
        case "Stepper":
            componentURL = "stepper"
        case "Toggle":
            componentURL = "toggle"
        case "Picker":
            componentURL = "picker"
        case "DatePicker":
            componentURL = "datepicker"
        case "ColorPicker":
            componentURL = "colorpicker"
        case "ProgressView":
            componentURL = "progressview"
        case "HStack":
            componentURL = "hstack"
        case "VStack":
            componentURL = "vstack"
        case "ZStack":
            componentURL = "zstack"
        case "Form":
            componentURL = "form"
        case "NavigationView":
            componentURL = "navigationview"
        case "Alerts":
            componentURL = "alert"
        case "Sheets":
            componentURL = "sheet"
        case "Plain List":
            componentURL = "list"
        case "Inset List":
            componentURL = "list"
        case "Grouped List":
            componentURL = "list"
        case "Inset Grouped List":
            componentURL = "list"
        case "Sidebar":
            componentURL = "sidebar"
        default:
            componentURL = ""
        }
        
        let fullURL = baseURL + componentURL
        return URL(string: fullURL)!
    }
}



