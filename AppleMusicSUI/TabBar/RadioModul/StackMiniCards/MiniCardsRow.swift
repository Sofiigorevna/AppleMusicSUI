//
//  MiniCardsRow.swift
//  AppleMusicSUI
//
//  Created by 1234 on 09.12.2023.
//

import SwiftUI

struct MiniCardsRow: View {
    var card: Cards
    
    var body: some View {
    
    
        LinearGradient(colors: card.colors, startPoint: .topTrailing, endPoint: .bottomTrailing)
        
            .overlay {
                Text(card.nameBackground)
                    .foregroundColor(.white)
                    .bold()
                    .font(Font.system(size: 50))
                    .padding([ .leading, .top], 70)
                    .fontDesign(.serif)
                    .opacity(0.2)
                
                
                Text(card.nameCard)
                    .font(Font.system(size: 24))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.trailing, 80)
                    .padding(.bottom, 80)
                    
                
                HStack{
                    Image(systemName: "apple.logo")
                        .font(.system(size: 15))
                        .padding(-10)
                    
                    Text("Music")
                        .font(.system(size: 15))
                        .bold()
                    
                }.foregroundColor(.white)
                    .padding(.bottom, 155)
                    .padding(.leading, 120)

            }.frame(width: 200, height: 200)
            .cornerRadius(20)
        
    }
    
}

struct MiniCardsRow_Previews: PreviewProvider {
    static var previews: some View {
        MiniCardsRow(card: Cards.category[0])
    }
}
