//
//  Step1View.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 21.07.2022.
//

import SwiftUI
import MapKit

struct Step1View: View {
    var body: some View {
        VStack{
            Mapview(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage(image: Image("turtlerock"))
                .offset(y: -150)
                .padding(.bottom, -170)


            VStack(alignment: .leading) {
                Text("Turtle Rock")
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()
                Text("About Turtle Rock").font(.title2)
                Text("Description text goes here ...")
            }
            .padding()
            Spacer()

        }

    }
}

struct Step1View_Previews: PreviewProvider {
    static var previews: some View {
        Step1View()
    }
}
