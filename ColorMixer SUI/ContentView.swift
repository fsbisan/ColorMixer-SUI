//
//  ContentView.swift
//  ColorMixer SUI
//
//  Created by Александр Макаров on 01.11.2021.
//

import SwiftUI


struct ContentView: View {
    
    @State private var redSliderNumber = Double.random(in: 0...255)
    @State private var greenSliderNumber = Double.random(in: 0...255)
    @State private var blueSliderNumber = Double.random(in: 0...255)
    
    @FocusState private var isInputActive: Bool
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            VStack {
                ColorView(red: redSliderNumber, green: greenSliderNumber, blue: blueSliderNumber)
                    .padding(.bottom, 40)
                ColorSliderView(sliderValue: $redSliderNumber, color: .red)
                ColorSliderView(sliderValue: $greenSliderNumber, color: .green)
                ColorSliderView(sliderValue: $blueSliderNumber, color: .blue)
            }
            .focused($isInputActive)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done"){
                        isInputActive = false
                    }
                }
            }
            Spacer()
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
