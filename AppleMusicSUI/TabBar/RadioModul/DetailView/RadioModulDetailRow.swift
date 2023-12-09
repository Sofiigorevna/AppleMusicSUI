//
//  RadioModulDetailRow.swift
//  AppleMusicSUI
//
//  Created by 1234 on 09.12.2023.
//

import SwiftUI

struct RadioModulDetailRow: View {
    var card: Cards
    
    var body: some View {
            HStack(spacing: 20) {
                CardsRowView(card: card)
                    .frame(width: 100, height: 100)
                
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(card.nameCard)
                    Text("Станция Apple Music")
                        .font(.caption)
                }
               
            }
        
    }
}

struct RadioModulDetailRow_Previews: PreviewProvider {
    static var previews: some View {
        RadioModulDetailRow(card:Cards(colors: [.purple,.yellow], nameCard: "Classic rocs", nameBackground: "Hits"))
    }
}
