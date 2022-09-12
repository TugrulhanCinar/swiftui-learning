//
//  TabGestureView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import SwiftUI

struct TabGestureView: View {

    @State var isTap: Bool = false
    var onTap: some Gesture {
        TapGesture(count: 2) /// Count = kaç defa basıldığında çalışacağını belirtiyoruz
            .onEnded { _ in
            self.isTap = !self.isTap
        }
    }

    var body: some View {
        RoundedRectangle(cornerSize: .init(width: 50, height: 20))
            .fill(isTap ? Color.red : Color.blue)
            .frame(width: 200, height: 200, alignment: .center)
            .gesture(onTap)
    }
}

struct TabGestureView_Previews: PreviewProvider {
    static var previews: some View {
        TabGestureView()
    }
}
