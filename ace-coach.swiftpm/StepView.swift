// Designed and created by Sadhika Akula in California, 04/18/2023
// This app is best viewed with the iPhone 14 Pro in XCode.
// Enjoy hitting those aces!

import SwiftUI

struct StepView: View {
    @Binding var isPresented: Bool
    
    @State var next: String? = nil
    @State var page1 = false
    
    var body: some View {
        ZStack {
            Text("reached step view")
        }
    }
}
