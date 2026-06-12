//
//  Color.swift
//  ProjectMVVMM_CoreData
//
//  Created by Hanitha Dhavileswarapu on 6/12/26.
//

import Foundation
import SwiftUI

extension Color{
    
    static let theme = ColorTheme()
}

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
