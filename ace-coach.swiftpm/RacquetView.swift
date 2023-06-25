// Designed and created by Sadhika Akula in California, 04/18/2023
// This app can be viewed either with an iPhone 14 in portrait mode or iPad Pro landscape mode.
// The ball is in your court...let's hit some aces!

import SwiftUI

struct RacquetView: View {
    @Binding var unlocked: [StepView.Selection]
    @Binding var selected: StepView.Selection?
    
    
    @State private var racquets = [Image("blue_racquet"), Image("red_racquet"), Image("green_racquet")]
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Select a racquet").font(.title).fontWeight(.bold)
            Spacer().frame(height: 10)
            Text("Choose a good racquet by considering key elements like weight, head size, and their impact on power, spin, and control. Use the sliders below to optimize based on your game and level.")
            Spacer().frame(height: 20)
            Spacer()
            Button(action: {
                unlocked.append(.racquet)
                selected = .court
            }) {
                Text("Unlock Court")
            }.padding([.top, .bottom], 8.0)
                .padding([.leading, .trailing], 20.0)
                .background(Color("Green"))
                .foregroundColor(.white)
                .cornerRadius(10)
        }.padding([.top, .leading, .trailing], 25)
    }
}
