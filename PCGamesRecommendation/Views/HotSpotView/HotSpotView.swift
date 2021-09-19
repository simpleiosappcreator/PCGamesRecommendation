//
//  HotSpotView.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import SwiftUI

struct HotSpotView: View {
    let color = Color.color
    
    @EnvironmentObject var hotSpotVM: HotSpotViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: -30){
            Text("Hot Spot")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(color.textAndImage)
            
            TabView(selection: $hotSpotVM.currentSelection,
                    content:  {
                        ForEach(0..<5) { index in
                            EachHotSpotGameView(model: hotSpotVM.hotSpotModels[index])
                                .tag(index)
                        }
                    })
                .frame(height: UIScreen.main.bounds.height * 0.4)
                .tabViewStyle(PageTabViewStyle())
                .onReceive(hotSpotVM.time, perform: { _ in
                    withAnimation(.spring()) {
                        hotSpotVM.currentSelection = hotSpotVM.currentSelection == 4 ? 0 : hotSpotVM.currentSelection + 1
                    }
                })
        }
    }
}

struct HotSpotView_Previews: PreviewProvider {
    static var previews: some View {
        HotSpotView()
    }
}
