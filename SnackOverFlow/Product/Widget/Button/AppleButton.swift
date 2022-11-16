//
//  AppleButton.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 16.11.2022.
//

import SwiftUI

struct AppleButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.apple.rawValue)
                Text(LocaleKeys.Auth.apple.rawValue.locale())
                Spacer()
            }
            .tint(.white)
            .padding(.all, PagePaddings.All.normal.rawValue)
            .font(.title2)
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.black)
        .cornerRadius(RadiusItem.radius)
    }
}

struct AppleButton_Previews: PreviewProvider {
    static var previews: some View {
        AppleButton(onTap: {})
    }
}
