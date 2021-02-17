//
//  ContentView.swift
//  Diving-into-SwiftUI
//
//  Created by codestorm on 2021/2/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let rTarget = Double.random(in: 0..<1)
        let gTarget = Double.random(in: 0..<1)
        let bTarget = Double.random(in: 0..<1)
        HStack {
            VStack {
                Color(red: 0.5, green: 0.5, blue: 0.5)
                Text("Match this color")
            }
            VStack {
                Color(red: 0.5, green: 0.5, blue: 0.5)
                Text("R: 127  G: 127  B: 127")
            }
        }
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
        })
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
