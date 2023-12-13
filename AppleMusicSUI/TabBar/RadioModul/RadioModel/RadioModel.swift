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
        Cards(colors: [.purple, .pink],
              nameCard: "Хиты",
              nameBackground: "Хит"),
        Cards(colors: [.yellow, .orange],
              nameCard: "Хип-хоп",
              nameBackground: "Хип-"),
        Cards(colors: [.mint, .green],
              nameCard: "Поп-музыка",
              nameBackground: "Поп-"),
        Cards(colors: [.blue, .indigo],
              nameCard: "Классика рока",
              nameBackground: "Клас"),
        Cards(colors: [.purple, .indigo],
              nameCard: "Чилаут",
              nameBackground: "Чил")
    ]
    
    static var genre: [Cards] = [
        Cards(colors: [.yellow, .orange],
              nameCard: "Хип-хоп",
              nameBackground: "Хип-"),
        Cards(colors: [.mint, .green],
              nameCard: "Поп-музыка",
              nameBackground: "Поп-"),
        Cards(colors: [.blue, .indigo],
              nameCard: "Классика рока",
              nameBackground: "Клас"),
        Cards(colors: [.blue, .red],
              nameCard: "Шансон",
              nameBackground: "Шан-"),
        Cards(colors: [.mint, .green, .yellow],
              nameCard: "Техно",
              nameBackground: "Тех-"),
        Cards(colors: [ .indigo, .white],
              nameCard: "Колыбельные",
              nameBackground: "Кол"),
        Cards(colors: [.yellow, .orange, .red],
              nameCard: "Музыка аниме",
              nameBackground: "Муз-"),
        Cards(colors: [.mint, .pink, .indigo],
              nameCard: "R&B-хиты",
              nameBackground: "R&B-"),
        Cards(colors: [.teal, .indigo, .yellow],
              nameCard: "Хиты 2000-х",
              nameBackground: "Хит")
]
    
  
    static var category: [Cards] = [
        Cards(colors: [.red, .white,.orange ],
              nameCard: "Альтернатива",
              nameBackground: "🧨"),
        Cards(colors: [.blue, .white, .indigo],
              nameCard: "Главное",
              nameBackground: "🧊"),
        Cards(colors: [.mint, .white,.indigo],
              nameCard: "Сон",
              nameBackground: "🙇🏼‍♀️"),
        Cards(colors: [.yellow, .white, .orange, .pink],
              nameCard: "Для детей",
              nameBackground: "👶🏻"),
        Cards(colors: [ .orange, .green],
              nameCard: "Чарты",
              nameBackground: "🥇"),
        Cards(colors: [.primary, .indigo, .red],
              nameCard: "Танцевальные",
              nameBackground: "💃🏼"),
        Cards(colors: [.indigo, .white, .purple],
              nameCard: "Хиты",
              nameBackground: "🫧"),
        Cards(colors: [.yellow, .green, .red],
              nameCard: "Спорт",
              nameBackground: "🏄🏼"),
        Cards(colors: [.brown, .primary, .orange],
              nameCard: "90-е",
              nameBackground: "📺"),
        Cards(colors: [.yellow, .white, .red],
              nameCard: "2000-е",
              nameBackground: "🔥"),
        Cards(colors: [.blue, .indigo, .yellow],
              nameCard: "2010-е",
              nameBackground: "🏖️"),
        Cards(colors: [.primary,.red, .orange],
              nameCard: "Рок",
              nameBackground: "🎸"),
        ]
}
