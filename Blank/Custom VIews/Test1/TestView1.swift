//
//  TestView1.swift
//  Blank
//
//  Created by VEMULA Nishanth on 23/11/24.
//

import SwiftUI

struct TestView1: View {
    private var theme = ThemeManager.shared;
    private let texttoSHow = "Hello, World! Hello, World! Hello, World!";
    var body: some View {
        ScrollView { // Add ScrollView here
            VStack {
                ForEach(1..<5) { intVal in
                    Text("\(intVal) - \(texttoSHow)")
                        .font(.title2)
                        .foregroundColor(theme.currentTheme.TestView1_SomeColor)
                        .padding(12)
                        .frame(maxWidth: .infinity)
                }
            }
        }
        // .frame(maxWidth: .infinity)
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    TestView1()
}
