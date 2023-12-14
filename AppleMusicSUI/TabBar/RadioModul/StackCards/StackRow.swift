//
//  StackRow.swift
//  AppleMusicSUI
//
//  Created by 1234 on 09.12.2023.
//

import SwiftUI

struct StackRow: View {
    var card: Cards

    var body: some View {
        VStack(alignment: .leading) {
            Text("избранная радиостанция")
                .bold()
                .font(.subheadline)
                .foregroundColor(.gray)
            Text(card.nameCard)
                .bold()
                .font(.system(size: 24))
            Text("Станция Apple Music")
                .font(.subheadline)
                .foregroundColor(.gray)

            CardsRowView(card: card)
            
        }
    }
}

struct StackRow_Previews: PreviewProvider {
    static var previews: some View {
        StackRow(card: Cards.category[0])
    }
}
