import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            WelcomeMessageView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}


struct WelcomeMessageView: View {
    var body: some View {
        HStack{
            //                LogoImage()
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
