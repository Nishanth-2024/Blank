//
//  ThemeData.swift
//  Blank
//
//  Created by VEMULA Nishanth on 18/11/24.
//

import SwiftUI

// Define a protocol for theme data
protocol ThemeProtocol {
    var TestView1_TitleBarContentColor: Color { get }
    var TestView1_SomeColor: Color { get }
}

class LightTheme: ThemeProtocol {
    
    private init() {}
    static let shared = LightTheme()
    
    let TestView1_TitleBarContentColor: Color = .black
    let TestView1_SomeColor: Color = .white.opacity(0.75)
}

class DarkTheme: ThemeProtocol {
    
    private init() {}
    static let shared = DarkTheme()
    
    let TestView1_TitleBarContentColor: Color = .white
    let TestView1_SomeColor: Color = .white.opacity(0.75)
}
