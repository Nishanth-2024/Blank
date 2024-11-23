//
//  ThemeManager.swift
//  Blank
//
//  Created by VEMULA Nishanth on 23/11/24.
//

import SwiftUI

// Define a struct to manage themes
@Observable
final class ThemeManager {
    
    private static var observation: NSKeyValueObservation?
    public static let shared: ThemeManager = ThemeManager()
    
    private(set) var currentTheme: ThemeProtocol = DarkTheme.shared
    // Define a private initializer to prevent creating instances
    private init() {
        ThemeManager.observation = NSApp.observe(\.effectiveAppearance) { (app, _) in
            app.effectiveAppearance.performAsCurrentDrawingAppearance {
                ThemeManager.shared.updateTheme()
            }
        }
        updateTheme()
    }
    
    private func updateTheme() {
        let currentAppearance: NSAppearance.Name = NSApp.effectiveAppearance.name
        switch currentAppearance {
        case .aqua:
            currentTheme = DarkTheme.shared; break;
        case .darkAqua:
            currentTheme = LightTheme.shared; break;
        case .vibrantLight:
            currentTheme = LightTheme.shared; break;
        case .vibrantDark:
            currentTheme = DarkTheme.shared; break;
        default:
            currentTheme = DarkTheme.shared; break;
        }
    }
}
