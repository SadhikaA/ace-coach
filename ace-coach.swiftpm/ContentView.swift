import SwiftUI

struct ContentView: View {

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
                Button("let's ") {
                    Text("let's play")
                        .font(.body)
                        .fontWeight(.medium)
                        .padding([.top, .bottom], 8.0)
                        .padding([.leading, .trailing], 25.0)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                }
            }
            .padding(.bottom)
            .preferredColorScheme(.light)
            
            VStack(spacing:30) {
                NavigationLink(destination: RacquetView()) {
                    Text("Show Racquet View")
                }
            }.navigationTitle("Menu")
        }
    }
}

struct RacquetView : View {
    var body: some View {
        VStack {
            Text("Racquet Selection")
        }
    }
}
