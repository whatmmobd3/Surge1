import SwiftUI
//first

struct ContentView: View {
    @EnvironmentObject var appValue: AppValue
    
    var body: some View {
        
        ZStack {
            if appValue.showingSlider {
                SliderView()
            }else{
                StartedView()
            }
        }
        .background(Color.black)
        .ignoresSafeArea(.all, edges: .top)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppValue())
    }
}

