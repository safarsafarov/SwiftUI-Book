import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome-background", bundle: nil)
                .blur(radius: 5.0)
            HStack{
                Image(systemName: "table")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .background(Color(white: 0.9))
                    .clipShape(Circle())
                    .foregroundColor(.red)
                
                Text("Welcome to Kuchi")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.red)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

