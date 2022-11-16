//
//  GoogleButton.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 16.11.2022.
//

import SwiftUI

struct GoogleButton: View {
    var onTap: () -> Void
    
    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Image(IconItems.Social.google.rawValue)
                Text(LocaleKeys.Auth.google.rawValue.locale())
                Spacer()
            }
            .tint(.black)
            .padding(.all, PagePaddings.All.normal.rawValue)
            .font(.title2)
        }
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
        .background(Color.white)
        .cornerRadius(RadiusItem.radius)
    }
}

struct GoogleButton_Previews: PreviewProvider {
    static var previews: some View {
        GoogleButton(onTap: {})
    }
}
