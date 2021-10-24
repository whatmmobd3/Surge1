import SwiftUI

struct FeatureTabView: View {
    var body: some View {
        TabView{
            ForEach(sliders){
                slider in FeatureItemView(slider: slider)
//                    .overlay(TextImage(),alignment: .bottom)
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


