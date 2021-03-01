import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome-background", bundle: nil)
                // 2
                 .resizable()
                 // 3
                 .scaledToFit()
                 // 4
                 .aspectRatio(1 / 1, contentMode: .fill)
                 // 5
                 .edgesIgnoringSafeArea(.all)
                 // 6
                 .saturation(0.5)
                 // 7
                 .blur(radius: 5)
                 // 8
                 .opacity(0.08)
            HStack{
                Image(systemName: "table")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .background(Color(white: 0.9))
                    .clipShape(Circle())
                    .foregroundColor(.red)
                
                VStack(alignment: .leading) {
                  Text("Welcome to")
                    .font(.headline)
                    .bold()
                  Text("Kuchi")
                    .font(.largeTitle)
                    .bold()
                }
                .foregroundColor(.red)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)

                
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

