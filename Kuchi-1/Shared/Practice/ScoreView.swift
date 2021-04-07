import SwiftUI

struct ScoreView: View {
    var numberOfQuestions = 5
    
    @State
    var numberOfAnswered = 0
    
    
    var body: some View {
        Button(action: {
            self._numberOfAnswered.wrappedValue += 1
            print("Answered: \(self._numberOfAnswered.wrappedValue)")
        }) {
            HStack {
                Text("\(_numberOfAnswered.wrappedValue)/\(numberOfQuestions)")
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
