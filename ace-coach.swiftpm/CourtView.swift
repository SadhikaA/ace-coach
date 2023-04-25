// Designed and created by Sadhika Akula in California, 04/18/2023
// This app can be viewed either with an iPhone 14 in portrait mode or iPad Pro landscape mode.
// The ball is in your court...let's hit some aces!

import SwiftUI

struct CourtView: View {
    @Binding var unlocked: [StepView.Selection]
    @Binding var selected: StepView.Selection?

    var body: some View {
        Text("Court content goes here.")
        Button(action: {
            unlocked.append(.court)
            selected = .forehand
        }) {
            Text("Unlock Forehand")
        }.padding([.top, .bottom], 8.0)
            .padding([.leading, .trailing], 20.0)
            .background(Color("Green"))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
