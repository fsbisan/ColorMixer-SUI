//
//  SliderView.swift
//  ColorMixer SUI
//
//  Created by Александр Макаров on 01.11.2021.
//

import SwiftUI


struct ColorSliderView: View {
    
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            ColorValueTextView(value: sliderValue)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: sliderValue) { onFocused in
                    textValue = "\(lround(onFocused))"
                }
            ColorValueTFView(textValue: $textValue, value: $sliderValue)
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(sliderValue: .constant(150), color: .red)
    }
}
