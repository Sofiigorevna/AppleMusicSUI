//
//  ModelMedia.swift
//  AppleMusicSUI
//
//  Created by 1234 on 05.12.2023.
//

import Foundation
import SwiftUI

struct ModelMedia: Hashable, Identifiable {
    var id = UUID()
    var isBool: Bool = false
    var icon: String
    var title: String
    
    var image: Image {
          Image(systemName: icon)
       }
}

extension ModelMedia {
    static var panel: [ModelMedia] = [
        
        ModelMedia( icon: "music.note.list", title: "Плейлисты"),
        ModelMedia( icon: "music.mic", title: "Артисты"),
        ModelMedia( icon: "rectangle.on.rectangle", title: "Альбомы"),
        ModelMedia( icon: "music.note", title: "Песни"),
        ModelMedia( icon: "music.note.tv", title: "Видеоклипы"),
        ModelMedia( icon: "music.quarternote.3", title: "Жанры"),

    ]
}
