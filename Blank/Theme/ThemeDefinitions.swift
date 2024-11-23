//
//  ThemeDefinitions.swift
//  Blank
//
//  Created by VEMULA Nishanth on 23/11/24.
//

import SwiftUI

struct Background {
    var color: Color?
    var gradient: LinearGradient?
    var image: Image?
    var border: Border?
    
    var view: some View {
        Group {
            if let color = color {
                color
            } else if let gradient = gradient {
                gradient
            } else if let image = image {
                image
            }
        }
        .borderView(border: border)
    }
}

struct Border {
    var color: Color?
    var width: CGFloat?
    var cornerRadius: CGFloat?
    
    var view: some View {
        Group {
            if let color = color, let width = width {
                RoundedRectangle(cornerRadius: cornerRadius ?? 0)
                    .stroke(color, lineWidth: width)
            }
        }
    }
}

extension View {
    func borderView(border: Border?) -> some View {
        self.overlay(
            Group {
                if let border = border {
                    border.view
                }
            }
        )
    }
}
