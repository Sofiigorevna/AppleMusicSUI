//
//  CategoryCardRow.swift
//  AppleMusicSUI
//
//  Created by 1234 on 12.12.2023.
//

import SwiftUI

struct CategoryCardRow: View {
    var card: Cards

    var body: some View {
        
        LinearGradient(colors: card.colors, startPoint: .topTrailing, endPoint: .bottomTrailing)
        
            .overlay {
                Text(card.nameBackground)
                    .foregroundColor(.white)
                    .bold()
                    .font(Font.system(size: 70))
                    .padding(.bottom, 50)
                    .fontDesign(.serif)
                    .opacity(0.9)
                
                
                Text(card.nameCard)
                    .font(Font.system(size: 20))
                    .bold()
                    .foregroundColor(.white)
//                    .padding(.trailing, 90)
                    .padding(.top, 100)
                    
            }.frame(width: 180, height: 150)
            .cornerRadius(20)
        
    }
    
}

struct CategoryCardRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardRow(card: Cards.category[0])
    }
}
