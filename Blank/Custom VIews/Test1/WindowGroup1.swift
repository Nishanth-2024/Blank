//
//  WindowGroup1.swift
//  Blank
//
//  Created by VEMULA Nishanth on 23/11/24.
//

import SwiftUI

struct WindowGroup1: Scene {
    var body: some Scene {
        WindowGroup {
            RootView1()
                .onAppear(perform: makeWindowOpaque)
                .frame(minWidth: 444, minHeight: 57)
        }
        .windowStyle(.hiddenTitleBar)
    }
    private func makeWindowOpaque() {
        NSApp.windows.forEach {
            $0.isOpaque = false
            $0.backgroundColor = .glassBack
            $0.titleVisibility = .hidden
        }
    }
}
