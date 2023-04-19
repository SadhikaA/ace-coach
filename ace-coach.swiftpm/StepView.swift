// Designed and created by Sadhika Akula in California, 04/18/2023
// This app is best viewed with the iPhone 14 Pro in XCode.
// Enjoy hitting those aces!

import SwiftUI


struct StepView: View {
    enum Selection {
        case racquet, court, forehand, backhand, serve
    }
    
    @State private var unlocked: [Selection] = []
    @State private var selected: Selection?
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                List {
                    NavigationLink(destination: RacquetView(unlocked: $unlocked, selected:$selected), tag: .racquet, selection: $selected) {
                        HStack {
                            Image(systemName: "lock" + (unlocked.contains(.racquet) ? ".open" : "")).foregroundColor(Color("Green"))
                            Text("Racquet")
                        }
                    }
                    NavigationLink(destination: CourtView(unlocked: $unlocked, selected:$selected), tag: .court, selection: $selected) {
                        HStack {
                            Image(systemName: "lock" + (unlocked.contains(.racquet) && unlocked.contains(.court) ? ".open" : "")).foregroundColor(Color("Green"))
                            Text("Court")
                        }.disabled(!unlocked.contains(.racquet))
                    }
                }
            }
        }
        
    }
}

struct RacquetView: View {
    @Binding var unlocked: [StepView.Selection]
    @Binding var selected: StepView.Selection?

    var body: some View {
        Text("Racquet content goes here.")
        Text("Accent Color")
            .foregroundStyle(Color.accentColor)
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

struct ForehandView: View {
    var body: some View {
        Text("Forehand content goes here.")
    }
}

struct BackhandView: View {
    var body: some View {
        Text("Backhand content goes here.")
    }
}


//
//struct StepView: View {
//    @State private var next: String?
//    @State private var current: String?
//    @State private var isRUnlocked = false
//
//    var body: some View {
//        NavigationView {
//            NavigationLink(destination: RacquetView(isRUnlocked: $isRUnlocked)) {
//                Label(
//                    title: {
//                        Text("Racquet").foregroundColor(.black)
//                    },
//                    icon: {
//                        Image(systemName: isRUnlocked ? "lock.open.fill" : "lock.fill").foregroundColor(Color("Green"))
//                    }
//                )
//                }.listRowBackground(current == "Racquet" ? Color(.systemFill) : Color(.white))
//            }
//            List {
//                Button(
//                    action: {
//                        current = "Racquet"
//                        isRUnlocked = true
//                    }) {
//                    Label(
//                        title: {
//                            Text("Racquet").foregroundColor(.black)
//                        },
//                        icon: {
//                            Image(systemName: isRUnlocked ? "lock.open.fill" : "lock.fill").foregroundColor(Color("Green"))
//                        }
//                    )
//                    }.listRowBackground(current == "Racquet" ? Color(.systemFill) : Color(.white))
//                if (current == "Racquet" && isRUnlocked) {
//                    RacquetView(isRUnlocked: $isRUnlocked)
//                }
//                Button("Court") {
//                    current = "Court"
//                }.foregroundColor(Color("Green"))
//                Button("Forehand") {
//                    next = "Racquet"
//                }.foregroundColor(Color("Green"))
//                Button("Backhand") {
//                    next = "Racquet"
//                }.foregroundColor(Color("Green"))
//                Button("Serve") {
//                    next = "Racquet"
//                }.foregroundColor(Color("Green"))
//                Button("Congrats") {
//                    next = "Racquet"
//                }.foregroundColor(Color("Green"))
//            }
//        }
//    }
//
//struct RacquetView: View {
//    @Binding var isRUnlocked : Bool
//    var body : some View {
//        ZStack {
//            Text("Racquet View")
//        }
//    }
//}
