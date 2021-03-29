import SwiftUI

struct Stack_Test: View {
    var body: some View {
        VStack{
            Text("A great and warm welcome to Kuchi")
                .background(Color.red)
                .frame(width: 100, height: 50, alignment: .center)
                .minimumScaleFactor(0.5)
                .background(Color.yellow)
        }
    }
}

struct Stack_Test_Previews: PreviewProvider {
    static var previews: some View {
        Stack_Test()
    }
}
