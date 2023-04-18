import SwiftUI

struct ContentView: View {
    @State private var selection: String? = nil // make this a part of the player struct

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Image("tennis_ball")
                    .resizable()
                    .padding(.leading)
                    .frame(width: 150, height: 100)
                    .scaledToFit()
                Text("ace").font(.system(size: 60)).fontWeight(.bold).multilineTextAlignment(.center)
                Text("your personal tennis coach").fontWeight(.medium).multilineTextAlignment(.center).padding(.bottom)
                NavigationLink(destination: RacquetView(), tag: "Racquet", selection: $selection) { EmptyView() }
                NavigationLink(destination: CourtView(), tag: "Court", selection: $selection) { EmptyView() }
                Button("let's play") {
                    self.selection = "Racquet"
                }.padding([.top, .bottom], 8.0)
                    .padding([.leading, .trailing], 25.0)
                    .background(Color("Green"))
                    .foregroundColor(.white)
                    .cornerRadius(40)
            }
            .padding(.bottom)
            .preferredColorScheme(.light)
        }
    }
}

struct CourtView : View {
    var body: some View {
        VStack {
            Text("Court Selection")
        }
    }
}

