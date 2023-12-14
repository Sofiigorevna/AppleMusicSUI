//
//  DetailCards.swift
//  AppleMusicSUI
//
//  Created by 1234 on 12.12.2023.
//

import SwiftUI

struct DetailCards: View {
    var card: Cards

    var body: some View {
        VStack(alignment: .leading) {
            Text("избранныйплейлист")
                .bold()
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Золотой запас")
                .bold()
                .font(.system(size: 24))
            Text("Станция Apple Music")
                .font(.subheadline)
                .foregroundColor(.gray)

            DetailCardsRow(card: card)
            
        }
    }
}

struct DetailCards_Previews: PreviewProvider {
    static var previews: some View {
        DetailCards(card: Cards.category[0])
    }
}
