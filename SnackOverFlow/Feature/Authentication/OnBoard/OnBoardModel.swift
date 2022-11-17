//
//  OnBoardModel.swift
//  SnackOverFlow
//
//  Created by Tuğrul on 17.11.2022.
//

import Foundation

struct OnBoardModel {
    let imageName: String
    let description: String
    
    static let items: [OnBoardModel] = [
        OnBoardModel(imageName: "img_hand_pick", description: "Hand-pickle high quality snacks."),
        OnBoardModel(imageName: "img_shop", description: "Shop global. mind-Blownly affordable"),
        OnBoardModel(imageName: "img_deliver", description: "Deliver on the promise of time")
    ]
}

