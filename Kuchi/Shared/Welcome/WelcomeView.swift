import SwiftUI

struct WelcomeView: View {
    var body: some View {
        Image(systemName: "table")
            .resizable()
            .frame(width: 30, height: 30)
            // 1
            .cornerRadius(30 / 2)
            // 2
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            // 3
            .background(Color(white: 0.9))
            // 4
            .clipShape(Circle())
            // 5
            .foregroundColor(.red)

    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

