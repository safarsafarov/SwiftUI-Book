import SwiftUI

struct ScoreView: View {
    var numberOfQuestions = 5
    
    @State
    var numberOfAnswered = 0
    
    
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
