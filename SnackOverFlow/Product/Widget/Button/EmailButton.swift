//
//  EmailButton.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 16.11.2022.
//

import SwiftUI

struct EmailButton: View {
    
    var onTap: () -> Void

    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Spacer()
                Text(LocaleKeys.Auth.custom.rawValue.locale())
                Spacer()
            }
            .tint(.white)
            .padding(.all, PagePaddings.All.normal.rawValue)
            .font(.system(size: FontSizes.headline, weight: .semibold))
            .bold(true)
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.peach)
        .cornerRadius(RadiusItem.radius)
    }
}

struct EmailButton_Previews: PreviewProvider {
    static var previews: some View {
        EmailButton(onTap: {})
    }
}
