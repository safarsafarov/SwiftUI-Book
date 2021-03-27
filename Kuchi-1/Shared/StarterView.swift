import SwiftUI

struct StarterView: View {
  @EnvironmentObject var userViewModel: UserManager
  
  @ViewBuilder
  var body: some View {
    if self.userViewModel.isRegistered {
      WelcomeView()
    } else {
      #if os(iOS)
      RegisterView(keyboardHandler: KeyboardFollower())
      #endif
      
      #if os(macOS)
      RegisterView()
      #endif
    }
  }
}

struct StarterView_Previews: PreviewProvider {
  static var previews: some View {
    StarterView()
      .environmentObject(UserManager())
  }
}
