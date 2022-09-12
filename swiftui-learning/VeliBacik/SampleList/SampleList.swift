//
//  SampleList.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 24.05.2022.
//

import SwiftUI

struct SampleList: View {

    private let items: Array<String> = [
        "chevron.right",
        "chevron.left",
        "chevron.left",
        "chevron.left"
    ]

    var body: some View {

        List{
            Section(header: Text("Sample").font(.largeTitle)) {
                HStack {
                    Text("Profile")
                    Image(systemName: "person.crop.circle")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                Text("hello")
                Text("hello")

            }

            HStack {
                ForEach(items, id: \.self) { item in
                    Image(systemName: item)
                }
            }
        }.listStyle(.grouped)
    }
}

struct SampleList_Previews: PreviewProvider {
    static var previews: some View {
        SampleList()
    }
}
