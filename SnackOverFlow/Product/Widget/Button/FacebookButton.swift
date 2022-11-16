//
//  FacebookButton.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 26.10.2022.
//

import SwiftUI

struct FacebookButton: View {
    
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.facebook.rawValue)
                Text(LocaleKeys.Auth.facebook.rawValue.locale())
                Spacer()
            }
            .tint(.white)
            .padding(.all, PagePaddings.All.normal.rawValue)
            .font(.title2)
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.deepSkyBlue)
        .cornerRadius(RadiusItem.radius)
    }
}

struct FacebookButton_Previews: PreviewProvider {
    static var previews: some View {
        FacebookButton(onTap: {})
    }
}
