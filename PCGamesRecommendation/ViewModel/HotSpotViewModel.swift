//
//  HotSpotViewModel.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import Foundation

class HotSpotViewModel: ObservableObject{
    static let games: [GameModel] = [
        GameModel(gameName: "SFV", gameType: "Fighting", gameCoverImage: "Fighting-SFV-0"),
        GameModel(gameName: "Tekken7", gameType: "Fighting", gameCoverImage: "Fighting-Tekken7-1"),
        GameModel(gameName: "KOFXIV", gameType: "Fighting", gameCoverImage: "Fighting-KOFXIV-2"),
        GameModel(gameName: "MK11", gameType: "Fighting", gameCoverImage: "Fighting-MK11-3"),
        GameModel(gameName: "Apex Legends", gameType: "FPS", gameCoverImage: "FPS-APEX-0"),
        GameModel(gameName: "PUBG", gameType: "FPS", gameCoverImage: "FPS-PUBG-1"),
        GameModel(gameName: "TitanFall", gameType: "FPS", gameCoverImage: "FPS-TitanFall-2"),
        GameModel(gameName: "Rainbow 6", gameType: "FPS", gameCoverImage: "FPS-Rainbow6-3"),
        GameModel(gameName: "Fall Guys", gameType: "Leisure", gameCoverImage: "Leisure-FallGuys-0"),
        GameModel(gameName: "AmongUs", gameType: "Leisure", gameCoverImage: "Leisure-AmongUs-1"),
        GameModel(gameName: "Yakuza7", gameType: "Role Playing", gameCoverImage: "RolePlaying-Yakuza7-0"),
        GameModel(gameName: "GTAV", gameType: "Role Playing", gameCoverImage: "RolePlaying-GTAV-1"),
        GameModel(gameName: "Monster Hunter Rise", gameType: "Role Playing", gameCoverImage: "RolePlaying-MHR-2"),
        GameModel(gameName: "Minecraft", gameType: "Role Playing", gameCoverImage: "RolePlaying-Minecraft-3"),
        GameModel(gameName: "FIFA21", gameType: "Sport", gameCoverImage: "Sport-FIFA21-0"),
        GameModel(gameName: "NBA2K21", gameType: "Sport", gameCoverImage: "Sport-NBA2K21-1")
    ]
    
    @Published var hotSpotModels: [GameModel] = []
    @Published var time = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @Published var currentSelection: Int = 0
    
    init(){
        currentHotSpotGames()
    }
    
    func currentHotSpotGames(){
        while hotSpotModels.count != 5{
            let ranNum = Int.random(in: 0..<16)
            let model = HotSpotViewModel.games[ranNum]
            if hotSpotModels.firstIndex(where: {$0.id == model.id}) == nil{
                hotSpotModels.append(model)
            }
        }
    }
}
