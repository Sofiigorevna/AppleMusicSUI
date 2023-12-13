//
//  DetailCardsRow.swift
//  AppleMusicSUI
//
//  Created by 1234 on 12.12.2023.
//

import SwiftUI

struct DetailCardsRow: View {
    var card: Cards

    var body: some View {
        LinearGradient(colors: card.colors, startPoint: .top, endPoint: .trailing)


            .overlay {
                Text(card.nameBackground)
                
                    .foregroundColor(.white)
                    .bold()
                    .font(Font.system(size: 100))
                    .padding([ .leading, .top], 70)
                    .fontDesign(.serif)
                    .opacity(1)
                
            }.frame(width: 300, height: 240)
            .cornerRadius(20)
    }
}

struct DetailCardsRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailCardsRow(card: Cards.category[0])
    }
}
