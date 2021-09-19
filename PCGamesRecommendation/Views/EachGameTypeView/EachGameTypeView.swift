//
//  EachGameTypeView.swift
//  UIDesignTest
//
//  Created by HAHA on 20/9/2021.
//

import SwiftUI

struct EachGameTypeView: View {
    @EnvironmentObject var gameTypeVM: GameTypeViewModel
    
    let model: GameTypeModel
    let color = Color.color
    
    var body: some View {
        VStack(alignment: .leading){
            Text(model.gameType)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(color.textAndImage)
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                    ForEach(model.gameModel) { gameModel in
                        GeometryReader{geometry in
                                Button {
                                    withAnimation(.spring()) {
                                        gameTypeVM.showDetailView = true
                                        gameTypeVM.updateChoseGameModel(model: gameModel)
                                    }
                                } label: {
                                    Image(gameModel.gameCoverImage)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .overlay(
                                            Text(gameModel.gameName)
                                                .font(.headline)
                                                .fontWeight(.semibold)
                                                .foregroundColor(Color.white)
                                                .padding(.all, 5)
                                                .background(Color.black.cornerRadius(10))
                                                .padding(.all, 5)
                                            , alignment: .bottomLeading)
                                        .rotation3DEffect(
                                            Angle(degrees: gameTypeVM.rotation3DEffect(geometry: geometry)),
                                                axis: (x: 0.0, y: 1.0, z: 0.0)
                                        )
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width * 0.97)
                            .frame(height: UIScreen.main.bounds.height * 0.35)
                    }
                }
            })
        }
    }
}

struct EachGameTypeView_Previews: PreviewProvider {
    static var previews: some View {
        EachGameTypeView(model: GameTypeModel(gameType: "", gameModel: []))
    }
}
