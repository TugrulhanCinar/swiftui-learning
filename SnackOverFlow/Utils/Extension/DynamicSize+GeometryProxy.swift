//
//  DynamicSize+GeometryProxy.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 16.11.2022.
//

import SwiftUI

extension GeometryProxy {
    
    /// Dynamic Height by device
    /// - Parameter height: Percent Value
    /// - Returns: Calvulated Value for device height
    func dh(height: Double) -> Double {
        return size.height * height
    }
    
    /// Dynamic Width by device
    /// - Parameter width: Percent Value
    /// - Returns: Calvulated Value for device width
    func dw(width: Double) -> Double {
        return size.width * width
    }

}
