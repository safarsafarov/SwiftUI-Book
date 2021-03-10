import SwiftUI

struct RegisterView: View {
    
    @State var name: String = ""
    
    var body: some View {
        VStack {
            WelcomeMessageView()
            TextField("Type your name...", text: $name)
        }
        .background(WelcomeBackgroundImage())
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
