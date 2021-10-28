
import SwiftUI

struct Equiqment: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("pairing my sense- i")
                .font(.title)
            Text("equiment")
                .font(.title)
                        
            Text("Dumbbell")
                .font(.title3)
                .padding(.top, 30)
            Dumbbell(
                title: "middleweight",
                detail: "Left/ 10 - 27.5 Ibs")
            
            Dumbbell(
                title: "middleweight",
                detail: "Right/ 10 - 27.5 Ibs")
            
            
            Text("Kettlebell")
                .font(.title3)
                .padding(.top, 30)
            
            Kettlebell(
                title: "light swing kettlebells",
                detail: "2 - 29.5 Ibs")
            
            
            Spacer()
            Button(action: {
            }, label: {
                Text("pair device")
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.init(red: 23/255, green: 23/255, blue: 23/255))
                    .cornerRadius(8)
            })
        }
    }
}

struct Equiqment_Previews: PreviewProvider {
    static var previews: some View {
        Equiqment()
    }
}
