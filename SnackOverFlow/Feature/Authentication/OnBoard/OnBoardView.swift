//
//  OnBoardView.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 17.11.2022.
//

import SwiftUI

struct OnBoardView: View {
    // 193 190 193
    @State private var currentIndex: Int = 0
    
    var body: some View {
        GeometryReader{ geometry in
            VStack {
                Spacer()

                TabView(selection: $currentIndex) {
                    ForEach(0...count(), id: \.self) { value in
                        SliderCard(
                            imageHeight: geometry.dh(height: 0.45),
                            model: OnBoardModel.items[value]
                        )
                    }
                }.tabViewStyle(.page(indexDisplayMode: .never))
                    .frame(height: geometry.dh(height: 0.6))
                
                HStack{
                    ForEach(0...count(), id: \.self) { index in
                        IndicatorRectangle(
                            width: geometry.dw(width: index == currentIndex ? 0.1 : 0.03)
                        )
                    }
                }.frame(height: ViewHeightSize.indicator)
                
                NormalButton(title: LocaleKeys.Buttons.getStarted.rawValue) {
                    
                }
                .padding(.all, PagePaddings.All.normal.rawValue)
            }
            
        }
    }
    
    /// Dummy list count
    /// - Returns: total item count
    private func count() -> Int {
        return OnBoardModel.items.count-1
    }
}

private struct SliderCard: View {
    let imageHeight: Double
    let model: OnBoardModel

    var body: some View {
        VStack {
            Image(model.imageName).frame(height: imageHeight)
            Text(model.description).font(.system(size: FontSizes.largeTitle, weight: .semibold))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.peach)
        }
    }
}

private struct IndicatorRectangle: View {
    var width: Double
    
    var body: some View {
        Rectangle().fill(Color.cloney)
            .frame(width: width)
            .cornerRadius(RadiusItem.radius)
        
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
