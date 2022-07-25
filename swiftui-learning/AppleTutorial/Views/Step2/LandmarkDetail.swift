//
//  LandmarkDetail.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 25.07.2022.
//

import SwiftUI

struct LandmarkDetail: View {

    var landmark: LandmarkModel


    var body: some View {
        ScrollView {
            Mapview(coordinate: landmark.locationCoordinate)
                       .ignoresSafeArea(edges: .top)
                       .frame(height: 300)

            CircleImage(image: landmark.image)
                       .offset(y: -130)
                       .padding(.bottom, -130)

                   VStack(alignment: .leading) {
                       Text(landmark.name)
                           .font(.title)

                       HStack {
                           Text(landmark.park)
                           Spacer()
                           Text(landmark.state)
                       }
                       .font(.subheadline)
                       .foregroundColor(.secondary)

                       Divider()

                       Text("About \(landmark.name)")
                           .font(.title2)
                       Text(landmark.description)
                   }
                   .padding()
               }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
