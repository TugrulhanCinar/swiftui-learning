//
//  OnBoardView.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 17.11.2022.
//

import SwiftUI

struct OnBoardView: View {
    
    @State var onBoardViewModel: OnboardViewModel = OnboardViewModel()
    
    var body: some View {
        NavigationView {
            GeometryReader{ geometry in
                VStack {
                    Spacer()

                    TabView(selection: $onBoardViewModel.currentIndex) {
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
                            if index == onBoardViewModel.currentIndex {
                                IndicatorRectangle(width: geometry.dw(width: 0.09))
                            } else {
                                IndicatorRectangle(width: geometry.dw(width: 0.03))
                            }
                        }
                    }.frame(height: ViewHeightSize.indicator)
                    
                    NavigationLink(isActive: $onBoardViewModel.isHomeRedirect) {
                        WelcomeView()
                            //.navigationBarHidden(true)
                            .toolbar(.hidden)
                            .statusBarHidden(true)
                    } label: {
                        NormalButton(title: LocaleKeys.Buttons.getStarted.rawValue) {
                            onBoardViewModel.saveUserLoginAndRedirect()
                        }.padding(.all, PagePaddings.All.normal.rawValue)
                    }.onAppear {
                        onBoardViewModel.checkUserFirstTime()
                    }
                }
                
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
