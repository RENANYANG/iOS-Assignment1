//
//  Assignment1App.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import SwiftUI

@main
struct SwiftUIComponentsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Components")
                    }
                
                TextInputOutputView()
                    .tabItem {
                        Image(systemName: "textformat")
                        Text("Text Input/Output")
                    }
                
                ControlsView()
                    .tabItem {
                        Image(systemName: "control")
                        Text("Controls")
                    }
                
                ContainerViewsView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Container Views")
                    }
                
                ListView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
            }
        }
    }
}


