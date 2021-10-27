//
//  Kettlebell.swift
//  Surge1
//
//  Created by Loc Nguyen on 27/10/2021.
//

import SwiftUI

struct Kettlebell: View {
    let title: String
    let detail: String
    
    var body: some View {
        HStack {
            ZStack{
                Circle2D(startAngle: 180, endAngle: 270,lineWidth: 5, clockwise: true,
                         colorArray:
                            [Color(hex: "F81628"), Color(hex: "F81628"), Color(hex: "1245FA")],
                         startAngleColor: 0, endAngleColor: 120)
                Image("kettlebell")
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

struct Kettlebell_Previews: PreviewProvider {
    static var previews: some View {
        Kettlebell(title: "Title", detail: "detail")
            .previewLayout(.sizeThatFits)
    }
}
