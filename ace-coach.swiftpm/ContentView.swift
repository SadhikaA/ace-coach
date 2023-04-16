import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("ace").font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/).fontWeight(.bold).foregroundColor(Color.black).multilineTextAlignment(.center).padding()
            Text("your personal tennis coach").fontWeight(.medium).multilineTextAlignment(.center).padding()
            Text("Hello World")
                .fontWeight(.bold)
                .font(.title)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .padding(10)
                .border(Color.purple, width: 5)
        }
    }
}
