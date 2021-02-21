import SwiftUI
import Combine

struct ContentView: View {
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    
    @State var showAlert = false
    
    func computeScore() -> Int {
        let rDiff = rGuess - rTarget
        let gDiff = gGuess - gTarget
        let bDiff = bGuess - bTarget
        let diff = sqrt((rDiff * rDiff + gDiff * gDiff
                            + bDiff * bDiff) / 3.0)
        return lround((1.0 - diff) * 100.0)
    }
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                HStack {
                    VStack {
                        ZStack(alignment: .center) {
                            Text("60")
                                 .padding(.all, 5)
                                 .background(Color.white)
                                 .mask(Circle())
                                 .foregroundColor(.black)
                            Color(red: rTarget, green: gTarget, blue: bTarget)
                        }
                        Text("Match this color")
                            .fontWeight(.semibold)
                    }
                    VStack {
                        Color(red: rGuess, green: gGuess, blue: bGuess)
                        Text("R: \(Int(rGuess * 255.0))"
                                + "  G: \(Int(gGuess * 255.0))"
                                + "  B: \(Int(bGuess * 255.0))")
                            .fontWeight(.semibold)
                    }
                }
                
                Button(action: { self.showAlert = true }) {
                    self.showAlert ? Text("R: \(Int(rTarget * 255.0))"
                      + "  G: \(Int(gTarget * 255.0))"
                      + "  B: \(Int(bTarget * 255.0))")
                      : Text("Match this color")
                    Text("Hit Me!")
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Your Score"),
                          message: Text(String(computeScore())))
                }
                .padding()
                
                ColorSlider(value: $rGuess, textColor: .red)
                ColorSlider(value: $gGuess, textColor: .green)
                ColorSlider(value: $bGuess, textColor: .blue)
            }
            .font(Font.subheadline.lowercaseSmallCaps().weight(.light))
        }
        .navigationViewStyle(StackNavigationViewStyle())
//        .colorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.8, gGuess: 0.3, bGuess: 0.7)
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
                .background(textColor)
                .cornerRadius(10)
            Text("255")
                .foregroundColor(textColor)
        }
        .padding(.horizontal)
    }
}

class TimeCounter: ObservableObject {
  var timer: Timer?
  @Published var counter = 0

  @objc func updateCounter() {
    counter += 1
  }
}
