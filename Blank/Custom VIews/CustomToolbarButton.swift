//
//  CustomToolbarButton.swift
//  Blank
//
//  Created by VEMULA Nishanth on 23/11/24.
//

import SwiftUI

struct CustomToolbarButton: View {
    let title: String
    let iconName: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Label(title, systemImage: iconName)
                .foregroundStyle(Color.toolbarColor1)
        }
    }
}

#Preview {
    CustomToolbarButton(title: "Title", iconName: "plus", action: {})
}
