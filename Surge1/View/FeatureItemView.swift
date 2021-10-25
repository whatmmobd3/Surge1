import SwiftUI

struct FeatureItemView: View {
    var slider: Slider
    var body: some View {
        Image(slider.image)
            .resizable()
            .scaledToFit()
            .overlay(
                Text(slider.description).multilineTextAlignment(.center)
                ,alignment: .bottom)
        
    }
}

struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(slider: sliders[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
