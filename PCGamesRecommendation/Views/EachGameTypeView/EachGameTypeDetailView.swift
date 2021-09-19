//
//  EachGameTypeDetailView.swift
//  UIDesignTest
//
//  Created by HAHA on 20/9/2021.
//

import SwiftUI

struct EachGameTypeDetailView: View {
    @EnvironmentObject var gameTypeVM: GameTypeViewModel
    let model: GameModel
    let color = Color.color
    var body: some View {
        ZStack(alignment: .top){
            color.background.ignoresSafeArea()
            
            VStack{
                HStack{
                    Button(action: {
                        withAnimation(.easeIn) {
                            gameTypeVM.showDetailView = false
                        }
                    }, label: {
                        Image(systemName: "arrow.turn.up.left")
                            .font(.title2)
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                    
                    Text(model.gameName)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding()
                
                VStack{
                    Image(model.gameCoverImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.5)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .offset(y: gameTypeVM.showDetailView == true ? 0 : -10)
                    
                    VStack{
                        Text("Game: \(model.gameName)")
                        
                        Text("Type: \(model.gameType)")
                    }
                    .offset(y: gameTypeVM.showDetailView == true ? 0 : 10)
                }
                
                Spacer()
            }
        }
    }
}

struct EachGameTypeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EachGameTypeDetailView(model: GameModel(gameName: "", gameType: "", gameCoverImage: ""))
    }
}
