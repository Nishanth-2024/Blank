//
//  RootView1.swift
//  Blank
//
//  Created by VEMULA Nishanth on 17/11/24.
//

import SwiftUI

struct RootView1: View {
    var body: some View {
        ZStack(alignment: .leading) {
            // Glass effect using a blurred background
            Rectangle()
                .fill(.clear)
                .background(.ultraThinMaterial) // Use thinMaterial for the glass effect
            VStack(spacing: 0) {
                Color.clear.frame(height: 38)
                Divider()
                TestView1()
            }
        }
        .ignoresSafeArea(.all)
        .toolbarTitleDisplayMode(.inline)
        .toolbar(content: toolbarContent)
    }
    private func toolbarContent() -> some ToolbarContent {
        Group {
            ToolbarItemGroup(placement: .navigation) {
                CustomToolbarButton(title: "Left Action 1", iconName: "star") {
                    // Action for first button on the left
                }
                .background(.clear)
                CustomToolbarButton(title: "Left Action 2", iconName: "heart") {
                    // Action for second button on the left
                }
                .background(.clear)
            }
            ToolbarItem(placement: .principal) {
                Text("Some Title")
            }
            ToolbarItemGroup(placement: .primaryAction) {
                CustomToolbarButton(title: "Left Action 1", iconName: "star") {
                    // Action for first button on the left
                }
                .background(.clear)
                CustomToolbarButton(title: "Left Action 2", iconName: "heart") {
                    // Action for second button on the left
                }
                .background(.clear)
            }
        }
    }
}

#Preview {
    RootView1()
}
