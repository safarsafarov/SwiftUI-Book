
import SwiftUI

struct ChallengeView: View {
  let challengeTest: ChallengeTest
  
  @State var showAnswers = false
  
  var body: some View {
    VStack {
      Button(action: {
        self.showAnswers.toggle()
      }) {
        QuestionView(question: challengeTest.challenge.question)
          .frame(height: 300)
      }
      
      if showAnswers {
        Divider()
        ChoicesView(challengeTest: challengeTest)
          .frame(height: 300)
          .padding()
      }
    }
  }
}


struct ChallengeView_Previews: PreviewProvider {
  // 1
  static let challengeTest = ChallengeTest(
    challenge: Challenge(
      question: "おねがい　します",
      pronunciation: "Onegai shimasu",
      answer: "Please"
    ),
    answers: ["Thank you", "Hello", "Goodbye"]
  )
  
  static var previews: some View {
    // 2
    return ChallengeView(challengeTest: challengeTest)
  }
}
