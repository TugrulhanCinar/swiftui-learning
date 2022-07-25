//
//  LanmarkRow.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 25.07.2022.
//

import SwiftUI

struct LanmarkRow: View {

    var landMark: LandmarkModel

    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            Spacer()
        }
    }
}

struct LanmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LanmarkRow(landMark: landmarks[0])
            LanmarkRow(landMark: landmarks[1])
        }
        //.previewLayout(.fixed(width: 300, height: 70))
    }
}
