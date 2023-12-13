//
//  CardsRowView.swift
//  AppleMusicSUI
//
//  Created by 1234 on 07.12.2023.
//

import SwiftUI

struct CardsRowView: View {
    
    var card: Cards
    
    var body: some View {
    
        LinearGradient(colors: card.colors, startPoint: .topTrailing, endPoint: .bottomTrailing)
        
            .overlay {
                Text(card.nameBackground)
                
                    .foregroundColor(.white)
                    .bold()
                    .font(Font.system(size: 100))
                    .padding([ .leading, .top], 70)
                    .fontDesign(.serif)
                    .opacity(0.2)
                
                Text(card.nameCard)
                    .font(Font.system(size: 25))
                
                    .bold()
                    .foregroundColor(.white)
                    .padding([ .trailing, .bottom], 160)
                
                
            }.frame(width: 300, height: 240)
            .cornerRadius(20)

    }
    
}

struct CardsRowView_Previews: PreviewProvider {
    static var previews: some View {
        CardsRowView(card: Cards.category[0])
    }
}
