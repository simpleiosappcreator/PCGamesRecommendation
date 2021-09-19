//
//  UIDesignTestApp.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import SwiftUI

@main
struct GamesRecommendationApp: App {
    @StateObject var hotSpotVM: HotSpotViewModel = HotSpotViewModel()
    @StateObject var tabViewVM: TabViewViewModel = TabViewViewModel()
    @StateObject var gameTypeVM: GameTypeViewModel = GameTypeViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(hotSpotVM)
                .environmentObject(tabViewVM)
                .environmentObject(gameTypeVM)
        }
    }
}
