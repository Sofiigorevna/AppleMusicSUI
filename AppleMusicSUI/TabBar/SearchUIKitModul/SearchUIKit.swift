//
//  SearchUIKit.swift
//  AppleMusicSUI
//
//  Created by 1234 on 13.12.2023.
//

import SwiftUI

struct SearchUIKit: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: ViewController())
        return navigationController
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

struct SearchUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SearchUIKit()
    }
}

