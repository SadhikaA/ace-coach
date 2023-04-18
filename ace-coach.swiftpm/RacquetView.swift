import SwiftUI

struct RacquetView : View {
    @Environment(\.presentationMode) var presentationMode
    @State private var next: String? = nil
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Image("tennis_ball")
                    .resizable()
                    .padding(.leading)
                    .frame(width: 150, height: 100)
                    .scaledToFit()
                Text("Let's pick a racquet").font(.system(size: 20)).fontWeight(.bold).multilineTextAlignment(.center)
                Text("select the racquet that matches your size").fontWeight(.medium).multilineTextAlignment(.center).padding(.bottom)
                NavigationLink(destination: CourtView(), tag: "Court", selection: $next) { EmptyView() }
                Button("continue") {
                    self.next = "Court"  // goes to first screen
                }.padding([.top, .bottom], 8.0)
                    .padding([.leading, .trailing], 20.0)
                    .background(Color("Green"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }.preferredColorScheme(.light)
        }.navigationBarBackButtonHidden(true)
        .navigationBarItems(
            leading:
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.left")
                        .foregroundColor(.green)
                        .frame(width: 4, height: 44)
                        .padding()
                    Text("Back").foregroundColor(.green)
                })
        )
    }
}
