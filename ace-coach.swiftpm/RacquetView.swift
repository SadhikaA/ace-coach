//
//  RacquetView.swift
//  Ace Coach
//
//  Created by Sadhika Akula on 4/19/23.
//

import Foundation

struct RacquetView: View {
    @Binding var unlocked: [StepView.Selection]
    @Binding var selected: StepView.Selection?

    var body: some View {
        Text("Racquet content goes here.")
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
    }
}
