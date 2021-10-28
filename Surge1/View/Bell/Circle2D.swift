import SwiftUI

struct Circle2D: View {
    
    
    @State var startAngle:Double
    @State var endAngle:Double
    @State var radius: CGFloat
    @State var lineWidth: CGFloat
    @State var clockwise: Bool
    
    @State var colorArray: [Color]
    @State var startAngleColor: Double
    @State var endAngleColor: Double
    
    //    [Color(hex: "F81628"), Color(hex: "F81628"), Color(hex: "1245FA")]
    
    var body: some View {
        let gradient = AngularGradient(colors: colorArray, center: .center, startAngle: .degrees(startAngleColor), endAngle: .degrees(endAngleColor))
        ZStack {
            AddCircle(startAngle: $startAngle, endAngle: $endAngle,
                      radius: $radius,clockwise: $clockwise)
                .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                .fill(gradient)
        }
        .frame(width: 100, height: 100)
    }
}

struct Circle2D_Previews: PreviewProvider {
    static var previews: some View {
        Circle2D(
            startAngle: 0, endAngle: 90,
            radius: 40, lineWidth: 5, clockwise: true,
            colorArray:
                [Color(hex: "F81628"), Color(hex: "F81628"), Color(hex: "1245FA")],
            startAngleColor: 0, endAngleColor: 120)
            .previewLayout(.sizeThatFits)
    }
}


struct AddCircle: Shape{
    @Binding var startAngle: Double
    @Binding var endAngle: Double
    @Binding var radius: CGFloat
    @Binding var clockwise: Bool
    
    
    func path(in rect: CGRect) -> Path{
        var path = Path()
        path.addArc(center: CGPoint(x: rect.width / 2, y: rect.height / 2), radius: radius,
                    startAngle: .degrees(startAngle),
                    endAngle: .degrees(endAngle), clockwise: clockwise)
        return path
    }
}

