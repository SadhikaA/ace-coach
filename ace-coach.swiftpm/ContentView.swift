import SwiftUI

struct ContentView: View {
    @State private var next: String? = nil

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
                NavigationLink(destination: RacquetView(), tag: "Racquet", selection: $next) { EmptyView() }
                NavigationLink(destination: CourtView(), tag: "Court", selection: $next) { EmptyView() }
                Button("let's play") {
                    self.next = "Racquet"  // goes to first screen
                }.padding([.top, .bottom], 8.0)
                    .padding([.leading, .trailing], 20.0)
                    .background(Color("Green"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.bottom)
            .preferredColorScheme(.light)
        }
    }
}

