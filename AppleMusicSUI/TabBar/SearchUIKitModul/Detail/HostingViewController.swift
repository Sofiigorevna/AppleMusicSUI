//
//  HostingViewController.swift
//  AppleMusicSUI
//
//  Created by 1234 on 14.12.2023.
//

import SwiftUI

final class HostingViewController: UIHostingController<SongsDetail> {
    
    init() {
        super.init(rootView: SongsDetail())

    }
    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}

