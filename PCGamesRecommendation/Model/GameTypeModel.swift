//
//  GameTypeModel.swift
//  UIDesignTest
//
//  Created by HAHA on 20/9/2021.
//

import Foundation

struct GameTypeModel: Identifiable{
    var id: String = UUID().uuidString
    let gameType: String
    let gameModel: [GameModel]
}
