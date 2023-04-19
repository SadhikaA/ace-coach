// Designed and created by Sadhika Akula in California, 04/18/2023
// This app can be viewed either with an iPhone 14 in portrait mode or iPad Pro landscape mode.
// The ball is in your court...let's hit some aces!

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    
    var body: some View {
        ZStack {
           if isPresented {
               StepView()
           } else {
               StartView(isPresented: $isPresented)
           }
       }
       .onAppear {
           isPresented = false
       }.preferredColorScheme(.light)
       
    }
}

struct StartView : View {
    @Binding var isPresented: Bool

    var body: some View {
        VStack {
            Image("tennis_ball")
                .resizable()
                .padding(.leading)
                .frame(width: 150, height: 100)
                .scaledToFit()
            Text("ace").font(.system(size: 60)).fontWeight(.bold).multilineTextAlignment(.center)
            Text("your personal tennis coach").fontWeight(.medium).multilineTextAlignment(.center).padding(.bottom)
            Button("let's play") {
                isPresented = true
            }.padding([.top, .bottom], 8.0)
                .padding([.leading, .trailing], 20.0)
                .background(Color("Green"))
                .foregroundColor(.white)
                .cornerRadius(10)
        }.preferredColorScheme(.light)
    }
}
