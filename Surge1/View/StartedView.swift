
import SwiftUI



struct StartedView: View {
    @EnvironmentObject var appValue: AppValue
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image("logo")
            Text("Welcome to the whole new way of strength tranning")
                .multilineTextAlignment(.center)
            Spacer()
            Button(action: {
                appValue.showingSlider = true
            }, label: {
                ZStack {
                    Text("get started now")
                        .foregroundColor(.white)
                }
                .frame(width: 300, height: 50)
                .background(Color.init(red: 23/255, green: 23/255, blue: 23/255))
                .cornerRadius(8)
            })
   
            
        }
    }
}

struct StartedView_Previews: PreviewProvider {
    static var previews: some View {
        StartedView()
            .environmentObject(AppValue())
    }
}
