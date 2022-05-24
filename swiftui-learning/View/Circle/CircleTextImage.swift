//
//  CircleTextImage.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 24.05.2022.
//

import SwiftUI
import Kingfisher

struct CircleTextImage: View {
    let title: String
    let imageUrl: String

    var body: some View {
        VStack {
            KFImage(
                URL(string: imageUrl)
            )
            .fade(duration: 0.25)
            .resizable()
            .clipShape(Circle())
            .shadow(radius: 21)
            Text(title).bold().italic()
        }
    }
}

struct CircleTextImage_Previews: PreviewProvider {

    static var previews: some View {
        CircleTextImage(title: "hello", imageUrl: "https://picsum.photos/id/237/200/300")
        // sayfa olarak değil de sadece o alanı göstermek için = 
            .previewLayout(.sizeThatFits)
            .frame(width: 200, height: 300, alignment: .center)
    }
}
