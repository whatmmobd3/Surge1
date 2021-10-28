//
//  Dumbbell.swift
//  Surge1
//
//  Created by Loc Nguyen on 27/10/2021.
//

import SwiftUI

struct Dumbbell: View {
    
    let title: String
    let detail: String
    
    var body: some View {
        HStack {
            ZStack{
                Circle2D(startAngle: 180, endAngle: 300, radius: 40,
                         lineWidth: 5, clockwise: true,
                         colorArray:
                            [Color(hex: "F81628"), Color(hex: "F81628"), Color(hex: "1245FA")],
                         startAngleColor: 0, endAngleColor: 120)
                Image("dumbell")
            }
            VStack(alignment: .leading) {
                Text(title)
                Text(detail)
                    .foregroundColor(Color.gray)
            }
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 2)
                .fill(Color.init(red: 23/255, green: 23/255, blue: 23/255))
                .frame(width: 300, height: 100)
        )
        
    }
}

struct Dumbbell_Previews: PreviewProvider {
    static var previews: some View {
        Dumbbell(title: "Title", detail: "detail")
            .previewLayout(.sizeThatFits)
    }
}
