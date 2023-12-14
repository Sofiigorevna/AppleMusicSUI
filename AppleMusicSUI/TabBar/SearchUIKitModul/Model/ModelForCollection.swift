//
//  ModelForCollection.swift
//  AppleMusicSUI
//
//  Created by 1234 on 13.12.2023.
//

import Foundation

struct Model: Hashable {
    let image: String
}

extension Model {
    static var all: [Model] = [
        Model(image: "Audio"),
        Model(image: "Romantic"),
        Model(image: "Russian Pop"),
        Model(image: "Russian Hip-hop"),
        Model(image: "US Pop"),
        Model(image: "US Hits"),
        Model(image: "Good mood"),
        Model(image: "Russian Hits")
    ]
}
