import SwiftUI

struct WelcomeView: View {
    var body: some View {
        Text("Welcome to Kuchi")
          .font(.system(size: 30))
          .bold()
          .foregroundColor(.red)
          .lineLimit(2)
          .multilineTextAlignment(.leading)

    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

