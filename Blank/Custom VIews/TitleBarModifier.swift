//
//  TitleBarModifier.swift
//  Blank
//
//  Created by VEMULA Nishanth on 23/11/24.
//

import SwiftUI

struct TitleBarModifier: NSViewRepresentable {
    func makeNSView(context: Context) -> NSView {
        let view = NSView()
        DispatchQueue.main.async {
            if let window = view.window {
                window.titlebarAppearsTransparent = true
                window.styleMask.insert(.fullSizeContentView)
                
                let titleBarView = NSVisualEffectView()
                titleBarView.material = .hudWindow
                titleBarView.blendingMode = .behindWindow
                titleBarView.state = .active
                titleBarView.translatesAutoresizingMaskIntoConstraints = false
                
                window.contentView?.addSubview(titleBarView, positioned: .below, relativeTo: nil)
                
                NSLayoutConstraint.activate([
                    titleBarView.leadingAnchor.constraint(equalTo: window.contentView!.leadingAnchor),
                    titleBarView.trailingAnchor.constraint(equalTo: window.contentView!.trailingAnchor),
                    titleBarView.topAnchor.constraint(equalTo: window.contentView!.topAnchor),
                    titleBarView.heightAnchor.constraint(equalToConstant: 28) // Adjust height as needed
                ])
                
                // Add a border to separate the title bar from the content
                let border = NSBox()
                border.boxType = .separator
                border.translatesAutoresizingMaskIntoConstraints = false
                window.contentView?.addSubview(border)
                
                NSLayoutConstraint.activate([
                    border.leadingAnchor.constraint(equalTo: window.contentView!.leadingAnchor),
                    border.trailingAnchor.constraint(equalTo: window.contentView!.trailingAnchor),
                    border.topAnchor.constraint(equalTo: titleBarView.bottomAnchor),
                    border.heightAnchor.constraint(equalToConstant: 1)
                ])
            }
        }
        return view
    }
    
    func updateNSView(_ nsView: NSView, context: Context) {}
}
