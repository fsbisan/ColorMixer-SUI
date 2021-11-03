//
//  ColorView.swift
//  ColorMixer SUI
//
//  Created by Александр Макаров on 02.11.2021.
//

import SwiftUI



struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red/255, green: green/255, blue: blue/255)
            .cornerRadius(20)
            .frame(height: 150)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4)
            }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 150, green: 150, blue: 150)
    }
}
