//
//  ColorExtension.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import SwiftUI

struct ColorTheme{
    let background = Color("background")
    let textAndImage = Color("textAndImage")
}

extension Color{
    static let color = ColorTheme()
}
