//
//  HeartView.swift
//  UIDesignTest
//
//  Created by HAHA on 20/9/2021.
//

import SwiftUI

struct HeartView: View {
    @EnvironmentObject var tabViewVM: TabViewViewModel
    
    let color = Color.color
    var body: some View {
        ZStack(alignment: .top){
            color.background.ignoresSafeArea()
            
            VStack{
                HStack{
                    Button(action: {
                        withAnimation(.easeIn) {
                            tabViewVM.heartButtonIsTapped = false
                            tabViewVM.houseButtonIsTapped = true
                        }
                    }, label: {
                        Image(systemName: "arrow.turn.up.left")
                            .font(.title2)
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                    
                    Text("Heart View")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding()
                
                Spacer()
                
                Text("Heart View")
                
                Spacer()
            }
        }
    }
}

struct HeartView_Previews: PreviewProvider {
    static var previews: some View {
        HeartView()
    }
}
