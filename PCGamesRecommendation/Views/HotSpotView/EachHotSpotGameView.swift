//
//  EachHotSpotGameView.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import SwiftUI

struct EachHotSpotGameView: View {
    let model: GameModel
    let color = Color.color
    
    var body: some View {
        Image(model.gameCoverImage)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
                VStack{
                    Text(model.gameName)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 0)
                                .fill(Color.white)
                                .frame(height: 1),
                            alignment: .bottom)

                    Text(model.gameType)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 0)
                                .fill(Color.white)
                                .frame(height: 1),
                            alignment: .top)
                }
                .padding(.all, 5)
                .background(Color.black.cornerRadius(10))
                .padding(.all, 5),
                alignment: .bottomLeading)
    }
}

struct EachHotSpotGameView_Previews: PreviewProvider {
    static var previews: some View {
        EachHotSpotGameView(model: GameModel(gameName: "", gameType: "", gameCoverImage: ""))
    }
}
