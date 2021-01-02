import SwiftUI

struct Welcome: View {
    
    var showTabBar: (() -> Void)
    
    var body: some View {
        ZStack
        {
            Colors.bg.ignoresSafeArea()
            VStack {
                Text("Welcome to the Shell app")
                    .foregroundColor(Colors.text)
                Spacer()
                Button(action: showTabBar, label: {
                    Text("Login")
                        .foregroundColor(Colors.accent)
                })
                Spacer()
            }
        }
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome(showTabBar: {})
    }
}
