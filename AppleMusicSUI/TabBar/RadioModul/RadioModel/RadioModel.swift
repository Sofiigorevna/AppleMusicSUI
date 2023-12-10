//
//  RadioModel.swift
//  AppleMusicSUI
//
//  Created by 1234 on 07.12.2023.
//

import Foundation
import SwiftUI

struct Cards: Identifiable {
    let id = UUID()
    let colors: [Color]
    let nameCard: String
    let nameBackground: String
}

extension Cards {
    static var all: [Cards] = [
        Cards(colors: [.purple, .pink], nameCard: "Хиты", nameBackground: "Хит"),
        Cards(colors: [.yellow, .orange], nameCard: "Хип-хоп", nameBackground: "Хип-"),
        Cards(colors: [.mint, .green], nameCard: "Поп-музыка", nameBackground: "Поп-"),
        Cards(colors: [.blue, .indigo], nameCard: "Классика рока", nameBackground: "Клас"),
        Cards(colors: [.purple, .indigo], nameCard: "Чилаут", nameBackground: "Чил")

    ]
    
    static var genre: [Cards] = [
        Cards(colors: [.yellow, .orange], nameCard: "Хип-хоп", nameBackground: "Хип-"),
        Cards(colors: [.mint, .green], nameCard: "Поп-музыка", nameBackground: "Поп-"),
        Cards(colors: [.blue, .indigo], nameCard: "Классика рока", nameBackground: "Клас"),
        Cards(colors: [.blue, .red], nameCard: "Шансон", nameBackground: "Шан-"),
        Cards(colors: [.mint, .green, .yellow], nameCard: "Техно", nameBackground: "Тех-"),
        Cards(colors: [ .indigo, .white], nameCard: "Колыбельные", nameBackground: "Кол"),
        Cards(colors: [.yellow, .orange, .red], nameCard: "Музыка аниме", nameBackground: "Муз-"),
        Cards(colors: [.mint, .pink, .indigo], nameCard: "R&B-хиты", nameBackground: "R&B-"),
        Cards(colors: [.teal, .indigo, .yellow], nameCard: "Хиты 2000-х", nameBackground: "Хит"),
]
}
