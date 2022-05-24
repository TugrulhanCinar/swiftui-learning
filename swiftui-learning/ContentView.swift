//
//  ContentView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 24.05.2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        sampleView1()
    }

    fileprivate func sampleView1() -> some View {
        // geçerli view ı seçip sağ menüden padding, color gibi özellikleri eklenebilir.
        return VStack(){
            Rectangle().frame(height: 100, alignment: .center)
            Circle().foregroundColor(.red).frame(height: 100, alignment: .center)
            Text("Sample1")
            Text("Sample2")
            Text("Sample3")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("Sample5")
                .fontWeight(.light)
                .foregroundColor(Color(hue: 0.529, saturation: 0.874, brightness: 0.661))
                .multilineTextAlignment(.leading)
                .lineLimit(2)
            Spacer(minLength: 10)
            HStack{
                RoundedRectangle(cornerRadius: 25).frame(height: 100)
                Spacer(minLength: 100)
                ZStack {
                    Circle()
                    Text("asfdasdf").foregroundColor(Color(hue: 0.583, saturation: 0.844, brightness: 0.798))
                }.frame(height: 100.0)

            }.frame(height: 500, alignment: .top)

        }
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
