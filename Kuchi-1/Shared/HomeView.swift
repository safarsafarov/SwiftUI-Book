import SwiftUI

struct HomeView: View {
  var body: some View {
    EmptyView()
    ZStack {
      WelcomeBackgroundImage()
      WelcomeMessageView()
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
