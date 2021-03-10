import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    var body: some View {
        ZStack {
          WelcomeBackgroundImage()
          VStack {
            WelcomeMessageView()
          }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
