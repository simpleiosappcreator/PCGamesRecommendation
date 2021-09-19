//
//  HotSpotModel.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import Foundation

struct GameModel: Identifiable{
    var id: String = UUID().uuidString
    let gameName: String
    let gameType: String
    let gameCoverImage: String
}
