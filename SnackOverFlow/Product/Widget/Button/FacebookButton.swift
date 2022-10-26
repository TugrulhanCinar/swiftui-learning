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
                Text("Sign In with Facebook")
                Spacer()
            }
            .tint(.white)
            .background(Color.deepSkyBlue)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.roundedRectangle)
        .controlSize(.large)
    }
}
