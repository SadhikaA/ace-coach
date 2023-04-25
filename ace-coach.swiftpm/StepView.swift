// Designed and created by Sadhika Akula in California, 04/18/2023
// This app can be viewed either with an iPhone 14 in portrait mode or iPad Pro landscape mode.
// The ball is in your court...let's hit some aces!

import SwiftUI

struct StepView: View {
    enum Selection {
        case racquet, court, forehand, backhand, serve, complete
    }
    
    @State private var unlocked: [Selection] = []
    @State private var selected: Selection?
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                List {
                    NavigationLink(destination: RacquetView(unlocked: $unlocked, selected:$selected), tag: .racquet, selection: $selected) {
                        HStack {
                            Image(systemName: "lock" + (unlocked.contains(.racquet) ? ".open" : ""))
                            Text("Racquet")
                        }
                    }.listRowBackground(selected == .racquet ? Color("Green") : Color(.white))
                    
                    NavigationLink(destination: CourtView(unlocked: $unlocked, selected:$selected), tag: .court, selection: $selected) {
                        HStack {
                            Image(systemName: "lock" + (unlocked.contains(.racquet) && unlocked.contains(.court) ? ".open" : ""))
                            Text("Court")
                        }.disabled(!unlocked.contains(.racquet))
                    }.listRowBackground(selected == .court ? Color("Green") : Color(.white))
                    
                    NavigationLink(destination: ForehandView(unlocked: $unlocked, selected: $selected), tag: .forehand, selection: $selected) {
                        HStack {
                            Image(systemName: "lock" + (unlocked.contains(.racquet) && unlocked.contains(.court) && unlocked.contains(.forehand) ? ".open" : ""))
                            Text("Forehand")
                        }
                        .disabled(!unlocked.contains(.court))
                    }.listRowBackground(selected == .forehand ?  Color("Green") : Color(.white))
                    
                    NavigationLink(destination: BackhandView(unlocked: $unlocked, selected: $selected), tag: .backhand, selection: $selected) {
                        HStack {
                            Image(systemName: "lock" + (unlocked.contains(.racquet) && unlocked.contains(.court) && unlocked.contains(.forehand) && unlocked.contains(.backhand) ? ".open" : ""))
                            Text("Backhand")
                        }
                        .disabled(!unlocked.contains(.forehand))
                    }.listRowBackground(selected == .backhand ? Color("Green"): Color(.white))
                    
                    NavigationLink(destination: ServeView(unlocked: $unlocked, selected: $selected), tag: .serve, selection: $selected) {
                        HStack {
                            Image(systemName: "lock" + (unlocked.contains(.racquet) && unlocked.contains(.court) && unlocked.contains(.forehand) && unlocked.contains(.backhand) && unlocked.contains(.serve) ? ".open" : ""))
                            Text("Serve")
                        }
                        .disabled(!unlocked.contains(.backhand))
                    }.listRowBackground(selected == .serve ?  Color("Green") : Color(.white))
                    
                    NavigationLink(destination: CompletedView(unlocked: $unlocked, selected: $selected), tag: .complete, selection: $selected) {
                        HStack {
                            Image(systemName: "lock" + (unlocked.contains(.racquet) && unlocked.contains(.court) && unlocked.contains(.forehand) && unlocked.contains(.backhand) && unlocked.contains(.serve) && unlocked.contains(.complete)  ? ".open" : ""))
                            Text("Finish")
                        }
                        .disabled(!unlocked.contains(.serve))
                    }.listRowBackground(selected == .complete ? Color("Green") : Color(.white))
                }
            }
        }.accentColor(Color("Green"))
    }
}

struct ForehandView: View {
    @Binding var unlocked: [StepView.Selection]
    @Binding var selected: StepView.Selection?

    var body: some View {
        Text("Forehand content goes here.")
        Button(action: {
            unlocked.append(.forehand)
            selected = .backhand
        }) {
            Text("Unlock Backhand")
        }.padding([.top, .bottom], 8.0)
            .padding([.leading, .trailing], 20.0)
            .background(Color("Green"))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct BackhandView: View {
    @Binding var unlocked: [StepView.Selection]
    @Binding var selected: StepView.Selection?

    var body: some View {
        Text("Backhand content goes here.")
        Button(action: {
            unlocked.append(.backhand)
            selected = .serve
        }) {
            Text("Unlock Serve")
        }.padding([.top, .bottom], 8.0)
            .padding([.leading, .trailing], 20.0)
            .background(Color("Green"))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct ServeView: View {
    @Binding var unlocked: [StepView.Selection]
    @Binding var selected: StepView.Selection?

    var body: some View {
        Text("Serve content goes here.")
        Button(action: {
            unlocked.append(.serve)
            selected = .complete
            unlocked.append(.complete)
        }) {
            Text("Complete Course")
        }.padding([.top, .bottom], 8.0)
            .padding([.leading, .trailing], 20.0)
            .background(Color("Green"))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct CompletedView: View {
    @Binding var unlocked: [StepView.Selection]
    @Binding var selected: StepView.Selection?

    var body: some View {
        Text("Completed content goes here.")
        // TODO: content is the finalized player profile in a box, draw tennis bag + trophy
    }
}
