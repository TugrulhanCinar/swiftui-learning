//
//  Images.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 26.10.2022.
//

import Foundation
import SwiftUI

enum Images: String {
    
    case juice = "image_juice"
    
}

struct ImageItems {
    
    enum Authentication: String {
        case login = "wolcano"
    }
}

extension String {
    
    /// String path to image
    /// - Returns: related image from image asset
    func image() -> Image {
        return Image(self)
    }
}
