//
//  CustomNavigationBarView.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import SwiftUI

struct CustomNavigationBarView: View {
    let color = Color.color
    @Binding var searchText: String
    @State var showPersonSheet: Bool = false
    
    var body: some View {
        HStack{
            TextField("🔍 search products...", text: $searchText)
                .textFieldStyle(CustomTextFieldStyle())
            
            Spacer()
            
            Button(action: {
                showPersonSheet.toggle()
            }, label: {
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundColor(color.textAndImage)
                    .frame(width: UIScreen.main.bounds.height * 0.06, height: UIScreen.main.bounds.height * 0.06)
                    .padding(.all, 5)
                    .background(Color.gray.opacity(0.7).cornerRadius(10))
            })
            .sheet(isPresented: $showPersonSheet, content: {
                PersonSheetView()
            })
            .withCustomButtonStyle(scale: 1.0)
        }
    }
}

struct CustomNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBarView(searchText: .constant(""))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
