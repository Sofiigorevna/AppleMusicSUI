//
//  StackMiniCards.swift
//  AppleMusicSUI
//
//  Created by 1234 on 09.12.2023.
//

import SwiftUI

struct StackMiniCards: View {
    var card: Cards

    var body: some View {
        VStack(alignment: .leading) {
            MiniCardsRow(card: card)
            Text(card.nameCard)
                .bold()
                .font(.system(size: 24))
            Text("Станция Apple Music")
                .font(.subheadline)
                .foregroundColor(.gray)
        }.padding()
    }
}

struct StackMiniCards_Previews: PreviewProvider {
    static var previews: some View {
        StackMiniCards(card: Cards.category[0])
    }
}
