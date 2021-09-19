//
//  CustomTextFieldStyle.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import SwiftUI

struct CustomTextFieldStyle : TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .font(.title) // set the inner Text Field Font
            .padding(10) // Set the inner Text Field Padding
            //Give it some style
            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.1)
            .background(Color.gray.opacity(0.2).cornerRadius(10))
    }
}
