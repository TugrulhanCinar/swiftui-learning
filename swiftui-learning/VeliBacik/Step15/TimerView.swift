//
//  TimerView.swift
//  swiftui-learning
//
//  Created by Tugrulhan Çınar on 3.08.2022.
//

import SwiftUI

//SubsciribionView
struct TimerView: View {

    @State private var timeText: String = ""
    @State private var color: Color = Color.red
    private var colorValue: Int = 0
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack {
            SubscriptionView(content: Text(timeText), publisher: timer) { time in
                timeText = time.getCustomFormattedTime()
                color = color == .red ? .blue : .red
            }
        }.background(color)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
