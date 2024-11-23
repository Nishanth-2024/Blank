//
//  VisualEffectBlur.swift
//  Blank
//
//  Created by VEMULA Nishanth on 17/11/24.
//

import SwiftUI

//struct VisualEffectBlur: View {
//    var body: some View {
//        ZStack {
//            // Background content
//            Color.white.edgesIgnoringSafeArea(.all)
//            
//            // Applying the blur effect
//            // Rectangle()
//            RoundedRectangle(cornerRadius: 30)
//                .fill(.ultraThickMaterial) // You can change this to .regularMaterial, .thickMaterial, etc.
//                // .cornerRadius(30)
//                .padding(5)
//                .background(Color.white)
//        }
//    }
//}

struct VisualEffectBlur: NSViewRepresentable {
    var blendingMode: NSVisualEffectView.BlendingMode

    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.blendingMode = blendingMode
        view.state = .active
        return view
    }

    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        nsView.blendingMode = blendingMode
    }
}

#Preview {
    VisualEffectBlur(blendingMode: .behindWindow)
}
