//
//  ModelSongs.swift
//  AppleMusicSUI
//
//  Created by 1234 on 12.12.2023.
//

import Foundation

struct Songs: Identifiable {
    let id = UUID()
    let image: String
    let artistName: String
    let trackName: String
}

extension Songs {
    static var all: [Songs] = [
        Songs(image: "Baby", artistName: "Justin Bieber", trackName: "Baby"),
        Songs(image: "timberlake", artistName: "Justin Timberlake", trackName: "What goes around"),
        Songs(image: "50cent", artistName: "50 cent ", trackName: "Candy shop "),
        Songs(image: "lmfao", artistName: "Lmfao ", trackName: "Party rock"),
        Songs(image: "toxic", artistName: "Britney Spears ", trackName: "Toxic"),
        Songs(image: "umbrella", artistName: "Rihanna ", trackName: "Umbrella"),

    ]}
