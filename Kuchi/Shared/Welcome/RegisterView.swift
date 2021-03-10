import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    var body: some View {
        ZStack {
          WelcomeBackgroundImage()
          VStack {
            WelcomeMessageView()
            TextField("Type your name...", text: $name)
          }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
