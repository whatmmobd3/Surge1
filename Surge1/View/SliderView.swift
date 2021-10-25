import SwiftUI

struct SliderView: View {
    @EnvironmentObject var appValue: AppValue
    
    var body: some View {
        VStack() {
            FeatureTabView()
            Button(action: {
                appValue.showingSlider = false
            }, label: {
                Text("Sign Up")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.init(red: 23/255, green: 23/255, blue: 23/255))
                    .cornerRadius(8)
            })
            HStack(spacing: 1.0) {
                Text("Already have an account? ")
                    .foregroundColor(.gray)
                Text("sign in")
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView().environmentObject(AppValue())
    }
}
