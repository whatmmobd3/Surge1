import SwiftUI

struct StartedView: View {
    @EnvironmentObject var appValue: AppValue
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Image("logo")
            Text("Welcome to the whole new way of strength tranning")
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                
            
            Spacer()
            Button(action: {
                
                
            }, label: {
                Text("Start")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.green)
                    .cornerRadius(8.0)
                
                
            })
//            Button(action: {
//                appValue.showingSlider = true
//            }, label: {
//                Text("get started now")
//                    .foregroundColor(.white)
//                    .frame(width: 300, height: 50)
//                .background(Color.init(red: 23/255, green: 23/255, blue: 23/255))})
//                .cornerRadius(8.0)
        }
    }
}

struct StartedView_Previews: PreviewProvider {
    static var previews: some View {
        StartedView()
            .environmentObject(AppValue())
    }
}
