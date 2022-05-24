//
//  ContentView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 24.05.2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        sampleStackView()
    }

    fileprivate func sampleVerticalView() -> some View {
        return HStack{
            // Yatay yerleştiriyor.
            Spacer().frame(width: 100, alignment: .center)
            Text("tgrl").padding()
            Text("tgrl").padding()
            Text("tgrl").padding()
            Color.red
            Spacer().frame(width: 100, alignment: .center)
        }
    }

    fileprivate func sampleHorizontalView() -> some View {
        // Dikey yerleştiriyor.
        return VStack{
            Spacer().frame(width: 100, alignment: .center)
            Text("tgrl").padding()
            Text("tgrl").padding()
            Text("tgrl").padding()
            Color.red
            Spacer().frame(width: 100, alignment: .center)
        }
    }

    fileprivate func sampleStackView() -> some View {
        // en üste koyduğun en alta gelecek. (üst üste)
        return ZStack(alignment: .bottom) {
            Spacer().frame(width: 100, alignment: .center)
            Text("tgrl").padding()
            Text("tgrl").padding()
            Text("tgrl").padding()
            Color.red.opacity(0.3)
            Spacer().frame(width: 100, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
