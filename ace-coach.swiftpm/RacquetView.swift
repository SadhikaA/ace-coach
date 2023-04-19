// Designed and created by Sadhika Akula in California, 04/18/2023
// This app can be viewed either with an iPhone 14 in portrait mode or iPad Pro landscape mode.
// The ball is in your court...let's hit some aces!

import SwiftUI

struct RacquetView: View {
    @Binding var unlocked: [StepView.Selection]
    @Binding var selected: StepView.Selection?
    
    @State private var slider1Value = 0.0
    @State private var slider2Value = 0.0
    @State private var slider3Value = 0.0
    @State private var slider4Value = 0.0
    @State private var slider5Value = 0.0
    
    @State private var racquets = [Image("blue_racquet"), Image("red_racquet"), Image("green_racquet")]
    
    private var calculatedValue: String {
            let sum = Int(slider1Value + slider2Value + slider3Value + slider4Value + slider5Value)
            switch sum {
            case 0...5:
                return "Beginner"
            case 6...10:
                return "Intermediate"
            default:
                return "Advanced"
            }
    }

    var body: some View {
        VStack (alignment: .leading) {
            Text("Select a racquet").font(.title).fontWeight(.bold)
            Spacer().frame(height: 10)
            Text("Choose a good racquet by considering key elements like weight, head size, and their impact on power, spin, and control. Use the sliders below to optimize based on your game and level.")
            Spacer().frame(height: 20)
            HStack {
                VStack (alignment: .leading) {
                    
                    Text("Weight")
                    Slider(value: $slider1Value, in: 0...1, step: 0.1)
                    
                    Text("Headsize")
                    Slider(value: $slider2Value, in: 0...1, step: 0.1)
                    
                    Text("Power")
                    Slider(value: $slider3Value, in: 0...1, step: 0.1)
                    
                    Text("Spin")
                    Slider(value: $slider4Value, in: 0...1, step: 0.1)
                    
                    Text("Control")
                    Slider(value: $slider5Value, in: 0...1, step: 0.1)
                    
        
                }
                VStack {
                    Text("Selected Value")
                        .font(.headline)
                    Text("\(calculatedValue)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Blue"))

                }.padding(.horizontal)
            }
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
