import SwiftUI

struct FeatureItemView: View {
    let slider: Slider
    var body: some View {
        Image(slider.image)
            .resizable()
            .scaledToFit()
        
        
    }
}

struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(slider: sliders[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

