import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎾 ace").font(.largeTitle)
            Text("Your personal tennis coach")
            Button("Let's play", action: cut).buttonStyle(.bordered)
        }
    }
}
