import SwiftUI

struct Stack_Test: View {
    var body: some View {
        HStack {
          Text("A great and warm welcome to Kuchi")
            .background(Color.red)

          Text("A great and warm welcome to Kuchi")
            .layoutPriority(1)
            .background(Color.red)

          Text("A great and warm welcome to Kuchi")
            .background(Color.red)
        }

    }
}

struct Stack_Test_Previews: PreviewProvider {
    static var previews: some View {
        Stack_Test()
    }
}
