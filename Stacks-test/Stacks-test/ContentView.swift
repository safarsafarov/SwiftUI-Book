//
//  ContentView.swift
//  Stacks-test
//
//  Created by codestorm on 2021/4/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello world")
                .background(Color.red)
            Text("A great and warm welcome to Kuchi")
                .background(Color.red)
                .frame(width: 150, height: 50, alignment: .center)
                .background(Color.yellow)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
