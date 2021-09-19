//
//  CartView.swift
//  UIDesignTest
//
//  Created by HAHA on 20/9/2021.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var tabViewVM: TabViewViewModel
    
    let color = Color.color
    
    var body: some View {
        ZStack(alignment: .top){
            color.background.ignoresSafeArea()
            
            VStack{
                HStack{
                    Button(action: {
                        withAnimation(.easeIn) {
                            tabViewVM.cartButtonIsTapped = false
                            tabViewVM.houseButtonIsTapped = true
                        }
                    }, label: {
                        Image(systemName: "arrow.turn.up.left")
                            .font(.title2)
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                    
                    Text("Cart View")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                
                Spacer()
                
                Text("Cart View")
                
                Spacer()
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
