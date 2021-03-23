
import SwiftUI

struct RegisterView: View {
  @EnvironmentObject var userManager: UserManager
  @ObservedObject var keyboardHandler: KeyboardFollower
  
  init(keyboardHandler: KeyboardFollower) {
    self.keyboardHandler = keyboardHandler
  }
  
  var body: some View {
    VStack {
      Spacer()
      
      WelcomeMessageView()
      
      TextField("Type your name...", text: $userManager.profile.name)
        .bordered()
      
      HStack {
        Spacer()
        Text("\(userManager.profile.name.count)")
          .font(.caption)
          .foregroundColor(
            userManager.isUserNameValid() ? .green : .red)
          .padding(.trailing)
      }
      .padding(.bottom)
      
      HStack {
        Spacer()
        
        Toggle(isOn: $userManager.settings.rememberUser) {
          Text("Remember me")
            .font(.subheadline)
            .foregroundColor(.gray)
        }
        .fixedSize()
      }
      
      Button(action: self.registerUser) {
        HStack {
          Image(systemName: "checkmark")
            .resizable()
            .frame(width: 16, height: 16, alignment: .center)
          Text("OK")
            .font(.body)
            .bold()
        }
      }
      .bordered()
      .disabled(!userManager.isUserNameValid())
      
      Spacer()
    }
    .padding(.bottom, keyboardHandler.keyboardHeight)
    .edgesIgnoringSafeArea(keyboardHandler.isVisible ? .bottom : [])
    .padding()
    .background(WelcomeBackgroundImage())
  }
}

// MARK: - Event Handlers
extension RegisterView {
  func registerUser() {
    if userManager.settings.rememberUser {
      userManager.persistProfile()
    } else {
      userManager.clear()
    }
    
    userManager.persistSettings()
    userManager.setRegistered()
  }
}

struct RegisterView_Previews: PreviewProvider {
  static let user = UserManager(name: "Ray")
  
  static var previews: some View {
    RegisterView(keyboardHandler: KeyboardFollower())
      .environmentObject(user)
  }
}
