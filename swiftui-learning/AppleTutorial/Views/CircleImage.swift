//
//  CircleImage.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 21.07.2022.
//

import SwiftUI
import Kingfisher

struct CircleImage: View {

    fileprivate let imageUrl = "https://picsum.photos/id/237/200/300"
    var body: some View {

        KFImage(URL(string: imageUrl))
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.cyan, lineWidth: 2)
            }
            .shadow(radius: 3)

    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
