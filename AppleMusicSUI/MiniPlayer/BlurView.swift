//
//  BlurView.swift
//  AppleMusicSUI
//
//  Created by 1234 on 05.12.2023.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
 
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    }
    
    func makeUIView(context: Context) ->  UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
        return view
    }
}

struct BlurView_Previews: PreviewProvider {
    static var previews: some View {
        BlurView()
    }
}
