//
//  ContentView.swift
//  Diving-into-SwiftUI
//
//  Created by codestorm on 2021/2/17.
//

import SwiftUI

struct ContentView: View {
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    @Binding var value: Double
    var textColor: Color

    var body: some View {
        
        VStack {
            HStack {
                VStack {
                    Color(red: rTarget, green: gTarget, blue: bTarget)
                    Text("Match this color")
                }
                VStack {
                    Color(red: rGuess, green: gGuess, blue: bGuess)
                    Text("R: 127  G: 127  B: 127")
                }
            }
            ColorSlider(value: $rGuess, textColor: .red)
            ColorSlider(value: $rGuess, textColor: .red)
            ColorSlider(value: $rGuess, textColor: .red)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.7, gGuess: 0.3, bGuess: 0.6)
            .previewLayout(.fixed(width: 568, height: 320))
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var textColor: Color
    var body: some View {
        HStack {
            Text("0")
              .foregroundColor(textColor)
            Slider(value: $value)
            Text("255")
              .foregroundColor(textColor)
        }
        .padding(.horizontal)
    }
}
