// Designed and created by Sadhika Akula in California, 04/18/2023
// This app is best viewed with the iPhone 14 Pro in XCode.
// Enjoy hitting those aces!

import SwiftUI

struct StepView: View {
    @State private var next: String? = nil
    @State private var unlock = false 
    
    var body: some View {
        NavigationView {
            List {
                Button(action: {
                       unlock.toggle()
                   }) {
                   if unlock {
                       Image(systemName: "lock.open.fill").foregroundColor(Color("Green"))
                   } else {
                       Image(systemName: "lock.fill").foregroundColor(Color("Green"))
                   }
                }
                Button("Racquet") {
                    next = "Racquet"
                }.foregroundColor(Color("Green"))
                Button("Court") {
                    next = "Racquet"
                }.foregroundColor(Color("Green"))
                Button("Forehand") {
                    next = "Racquet"
                }.foregroundColor(Color("Green"))
                Button("Backhand") {
                    next = "Racquet"
                }.foregroundColor(Color("Green"))
                Button("Serve") {
                    next = "Racquet"
                }.foregroundColor(Color("Green"))
                Button("Congrats") {
                    next = "Racquet"
                }.foregroundColor(Color("Green"))
            }
        }
    }
}
