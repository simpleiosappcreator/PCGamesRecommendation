//
//  ContentView.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var tabViewVM: TabViewViewModel
    @EnvironmentObject var gameTypeVM: GameTypeViewModel
    let color = Color.color
    
    @State var searchText: String = ""
    
    var body: some View {
        ZStack(alignment: .bottom){
            color.background.opacity(0.7).ignoresSafeArea()
            VStack{
                CustomNavigationBarView(searchText: $searchText)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 10){
                        HotSpotView()
                        
                        ForEach(gameTypeVM.gameTypeModels.filter({$0.gameType.lowercased().contains(searchText.lowercased()) || searchText.isEmpty})) { model in
                            EachGameTypeView(model: model)
                        }
                        
                        Spacer(minLength: 0)
                    }
                })
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            if value.translation.height > 5{
                                withAnimation(.spring()) {
                                    tabViewVM.showTabView = true
                                }
                            }else if value.translation.height < 0{
                                withAnimation(.spring()) {
                                    tabViewVM.showTabView = false
                                }
                            }
                        })
                )
                
                Spacer(minLength: 0)
            }
            
            ZStack{
                if tabViewVM.heartButtonIsTapped{
                    HeartView()
                        .transition(.move(edge: .trailing))
                        .animation(.easeIn)
                        .offset(x: tabViewVM.horizontalHeartDragOffset)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    withAnimation(.linear) {
                                        if value.translation.width > 0 {
                                            tabViewVM.horizontalHeartDragOffset = value.translation.width
                                        }
                                    }
                                    
                                    print("\(tabViewVM.horizontalHeartDragOffset)")
                                }
                                .onEnded{ value in
                                    withAnimation(.linear) {
                                        if tabViewVM.horizontalHeartDragOffset > 150{
                                            tabViewVM.heartButtonIsTapped = false
                                            tabViewVM.houseButtonIsTapped = true
                                        }
                                        tabViewVM.horizontalHeartDragOffset = 0
                                    }
                                }
                        )
                }else if tabViewVM.cartButtonIsTapped{
                    CartView()
                        .transition(.move(edge: .trailing))
                        .animation(.easeIn)
                        .offset(x: tabViewVM.horizontalCartDragOffset)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    withAnimation(.spring()) {
                                        if value.translation.width > 0 {
                                            tabViewVM.horizontalCartDragOffset = value.translation.width
                                        }
                                    }
                                    
                                    print("\(tabViewVM.horizontalCartDragOffset)")
                                }
                                .onEnded{ value in
                                    withAnimation(.spring()) {
                                        if tabViewVM.horizontalCartDragOffset > 150{
                                            tabViewVM.cartButtonIsTapped = false
                                            tabViewVM.houseButtonIsTapped = true
                                        }
                                        tabViewVM.horizontalCartDragOffset = 0
                                    }
                                }
                        )
                }
            }
            .zIndex(1.0)
            
            ZStack{
                if gameTypeVM.showDetailView{
                    EachGameTypeDetailView(model: gameTypeVM.choseGameModel)
                        .transition(.move(edge: .trailing))
                        .animation(.easeIn)
                        .offset(x: gameTypeVM.horizontalDragOffset)
                        .gesture(
                            DragGesture()
                                .onChanged{ value in
                                    withAnimation(.spring()) {
                                        if value.translation.width > 0 {
                                            gameTypeVM.horizontalDragOffset = value.translation.width
                                        }
                                    }
                                }
                                .onEnded{ value in
                                    withAnimation(.spring()) {
                                        if gameTypeVM.horizontalDragOffset > 150{
                                            gameTypeVM.showDetailView = false
                                        }
                                        gameTypeVM.horizontalDragOffset = 0
                                    }
                                }
                        )
                }
            }
            .zIndex(1.0)
            
            BottomCustomTabView()
                .offset(y: tabViewVM.showTabView == true ? 0 : UIScreen.main.bounds.height)
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
