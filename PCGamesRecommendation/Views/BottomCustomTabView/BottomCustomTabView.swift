//
//  BottomCustomTabView.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import SwiftUI

struct BottomCustomTabView: View {
    @EnvironmentObject var tabViewVM: TabViewViewModel
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1)).opacity(0.95).cornerRadius(25)
            
            HStack{
                Button(action: {
                    withAnimation(.spring()) {
                        tabViewVM.houseButtonIsTapped = true
                    }
                }, label: {
                    Image(systemName: "house.fill")
                        .font(.title)
                        .foregroundColor(tabViewVM.houseButtonIsTapped ? .blue : .gray)
                })
                .withCustomButtonStyle(opacityValue: 1.0, scale: 1.0)
                
                Spacer()
                
                Button(action: {
                    withAnimation(.spring()) {
                        tabViewVM.showTabView = false
                        tabViewVM.houseButtonIsTapped = false
                        tabViewVM.heartButtonIsTapped = true
                    }
                }, label: {
                    Image(systemName: "heart.fill")
                        .font(.title)
                        .foregroundColor(tabViewVM.heartButtonIsTapped ? .blue : .gray)
                })
                .withCustomButtonStyle(opacityValue: 1.0, scale: 1.0)
                
                Spacer()
                
                Button(action: {
                    withAnimation(.spring()) {
                        tabViewVM.showTabView = false
                        tabViewVM.houseButtonIsTapped = false
                        tabViewVM.cartButtonIsTapped = true
                    }
                }, label: {
                    Image(systemName: "cart.fill")
                        .font(.title)
                        .foregroundColor(tabViewVM.cartButtonIsTapped ? .blue : .gray)
                })
                .withCustomButtonStyle(opacityValue: 1.0, scale: 1.0)
            }
            .padding(.horizontal)
        }
        .frame(height:UIScreen.main.bounds.height * 0.1)
    }
}

struct BottomCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCustomTabView()
            .previewLayout(.sizeThatFits)
    }
}
