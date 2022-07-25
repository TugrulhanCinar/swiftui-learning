//
//  LandmarkList.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 25.07.2022.
//

import SwiftUI

struct LandmarkList: View {

    var body: some View {
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LanmarkRow(landMark: landmark)
                }
            }
            .listStyle(.inset)
            .navigationTitle("LandMarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
                    LandmarkList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
                }
    }
}
