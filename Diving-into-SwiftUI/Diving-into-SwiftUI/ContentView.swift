//
//  ContentView.swift
//  Diving-into-SwiftUI
//
//  Created by codestorm on 2021/2/17.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Text("Hello World")
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
          .previewLayout(.fixed(width: 568, height: 320))
    }
}
