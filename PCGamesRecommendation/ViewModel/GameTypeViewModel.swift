//
//  GameTypeViewModel.swift
//  UIDesignTest
//
//  Created by HAHA on 20/9/2021.
//

import Foundation
import SwiftUI

class GameTypeViewModel: ObservableObject{
    @Published var gameTypeModels: [GameTypeModel] = [
        GameTypeModel(gameType: "Fighting", gameModel: [
            GameModel(gameName: "SFV", gameType: "Fighting", gameCoverImage: "Fighting-SFV-0"),
            GameModel(gameName: "Tekken7", gameType: "Fighting", gameCoverImage: "Fighting-Tekken7-1"),
            GameModel(gameName: "KOFXIV", gameType: "Fighting", gameCoverImage: "Fighting-KOFXIV-2"),
            GameModel(gameName: "MK11", gameType: "Fighting", gameCoverImage: "Fighting-MK11-3")
        ]),
        GameTypeModel(gameType: "FPS", gameModel: [
            GameModel(gameName: "Apex Legends", gameType: "FPS", gameCoverImage: "FPS-APEX-0"),
            GameModel(gameName: "PUBG", gameType: "FPS", gameCoverImage: "FPS-PUBG-1"),
            GameModel(gameName: "TitanFall", gameType: "FPS", gameCoverImage: "FPS-TitanFall-2"),
            GameModel(gameName: "Rainbow 6", gameType: "FPS", gameCoverImage: "FPS-Rainbow6-3")
        ]),
        GameTypeModel(gameType: "Leisure", gameModel: [
            GameModel(gameName: "Fall Guys", gameType: "Leisure", gameCoverImage: "Leisure-FallGuys-0"),
            GameModel(gameName: "AmongUs", gameType: "Leisure", gameCoverImage: "Leisure-AmongUs-1")
        ]),
        GameTypeModel(gameType: "Role Playing", gameModel: [
            GameModel(gameName: "Yakuza7", gameType: "Role Playing", gameCoverImage: "RolePlaying-Yakuza7-0"),
            GameModel(gameName: "GTAV", gameType: "Role Playing", gameCoverImage: "RolePlaying-GTAV-1"),
            GameModel(gameName: "Monster Hunter Rise", gameType: "Role Playing", gameCoverImage: "RolePlaying-MHR-2"),
            GameModel(gameName: "Minecraft", gameType: "Role Playing", gameCoverImage: "RolePlaying-Minecraft-3")
        ]),
        GameTypeModel(gameType: "Sport", gameModel: [
            GameModel(gameName: "FIFA21", gameType: "Sport", gameCoverImage: "Sport-FIFA21-0"),
            GameModel(gameName: "NBA2K21", gameType: "Sport", gameCoverImage: "Sport-NBA2K21-1")
        ])
    ]
    
    @Published var showDetailView: Bool = false
    
    @Published var horizontalDragOffset: CGFloat = 0
    
    @Published var choseGameModel: GameModel = GameModel(gameName: "", gameType: "", gameCoverImage: "")
    
    func updateChoseGameModel(model: GameModel){
        choseGameModel = model
    }
    
    func rotation3DEffect(geometry: GeometryProxy) -> Double{
        let maxWidth = UIScreen.main.bounds.width / 2
        let midX = geometry.frame(in: .global).midX
        
        return Double((1-(midX / maxWidth)) * 40)
    }
}
