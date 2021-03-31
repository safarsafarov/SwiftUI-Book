import SwiftUI

struct ScoreView: View {
    var numberOfAnswered = 0
    var numberOfQuestions = 5
    var body: some View {
        HStack {
            Text("\(numberOfAnswered)/\(numberOfQuestions)")
                .font(.caption)
                .padding(4)
            Spacer()
        }
        Button(action: {
          self.showAnswers = !self.showAnswers
        }) {
          QuestionView(question: challengeTest.challenge.question)
            .frame(height: 300)
        }
        // -Insert this-
        ScoreView()

    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}
