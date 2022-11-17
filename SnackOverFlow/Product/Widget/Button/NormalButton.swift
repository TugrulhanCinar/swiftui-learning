//
//  NormalButton.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 17.11.2022.
//

import SwiftUI

/// It's normal button for project
/// [onTap] will return user interaction
/// [title] it showes button name
struct NormalButton: View {
    
    var title: String
    var onTap: () -> Void

    var body: some View {
        Button {
            onTap()
        } label: {
            HStack {
                Spacer()
                Text(title.locale())
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

struct NormalButton_Previews: PreviewProvider {
    static var previews: some View {
        NormalButton(title: "Sample") {
            
        }
    }
}
