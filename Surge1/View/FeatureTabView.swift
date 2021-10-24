import SwiftUI

struct FeatureTabView: View {
    var body: some View {
        TabView{
            ForEach(sliders){
                slider in FeatureItemView(slider: slider)
                    .overlay(TextImage(),alignment: .bottom)
            }
            .padding(20)
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeatureTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureTabView()
            
    }
}


struct TextImage: View {
    var body: some View {
        VStack(spacing: 5.0){
            Text("No matter what weight you pick")
            Text("your dummbbells feel the same, your")
            Text("kettlebell swings just right")
        }
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
    }
    
}
