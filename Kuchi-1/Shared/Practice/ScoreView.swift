import SwiftUI
struct State {
  var numberOfAnswered = Box<Int>(initialValue: 0)
}
struct ScoreView: View {
    var numberOfQuestions = 5
    
    @State
    var numberOfAnswered = 0
    class Box<T> {
      var wrappedValue: T
      init(initialValue value: T) { self.wrappedValue = value }
        struct State {
          var numberOfAnswered = Box<Int>(initialValue: 0)
        }

    }

    
    var body: some View {
        
        // 1
        Button(action: {
            // 2
            self.numberOfAnswered += 1
        }) {
            // 3
            HStack {
                Text("\(numberOfAnswered)/\(numberOfQuestions)")
                    .font(.caption)
                    .padding(4)
                Spacer()
            }
        }
    }
    
}


struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
