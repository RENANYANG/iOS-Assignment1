//
//  ControlsView.swift
//  Assignment1
//
//  Created by RENANYANG on 2024-07-19.
//

import SwiftUI

struct ControlsView: View {
    @State private var toggleIsOn = false
    @State private var sliderValue = 0.5

    var body: some View {
        VStack {
            Button("Press me") { }
            Menu("Menu") { }
            Link("Google", destination: URL(string: "https://www.google.com")!)
            Slider(value: $sliderValue)
            Stepper("Step \(Int(sliderValue))", value: $sliderValue, in: 0...100)
            Toggle("Toggle", isOn: $toggleIsOn)
            Picker("Pick an option", selection: $toggleIsOn) {
                Text("Option 1").tag(true)
                Text("Option 2").tag(false)
            }
            DatePicker("Select a date", selection: .constant(Date()), displayedComponents: .date)
            ColorPicker("Pick a color", selection: .constant(.blue))
            ProgressView()
        }
        .padding()
    }
}

