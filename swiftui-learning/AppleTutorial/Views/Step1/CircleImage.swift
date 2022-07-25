//
//  CircleImage.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 21.07.2022.
//

import SwiftUI
import Kingfisher

struct CircleImage: View {

    // fileprivate let imageUrl = "https://picsum.photos/id/237/200/300"

    var image: Image

    var body: some View {

        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)

    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
