//
//  TabViewViewModel.swift
//  UIDesignTest
//
//  Created by HAHA on 19/9/2021.
//

import Foundation
import SwiftUI

class TabViewViewModel: ObservableObject{
    @Published var showTabView: Bool = true
    @Published var houseButtonIsTapped: Bool = true
    @Published var heartButtonIsTapped: Bool = false
    @Published var cartButtonIsTapped: Bool = false
    
    @Published var horizontalCartDragOffset: CGFloat = 0
    @Published var horizontalHeartDragOffset: CGFloat = 0
}
