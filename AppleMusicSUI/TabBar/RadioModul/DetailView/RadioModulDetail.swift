//
//  RadioModulDetail.swift
//  AppleMusicSUI
//
//  Created by 1234 on 09.12.2023.
//

import SwiftUI

struct RadioModulDetail: View {
    @State private var cards = Cards.genre

    
    var body: some View {
        NavigationView {
            List {
                ForEach(cards) { card in
                    RadioModulDetailRow(card: card)
                }
                
            }
            .listStyle(.inset)
            .toolbar {
            ToolbarItem(placement: .navigationBarLeading ) {
                NavigationLink {
                    RadioModul()
                        .navigationBarBackButtonHidden(true)

                } label: {
                    Image(systemName: "chevron.left")
                    .renderingMode(.original)

                }
                .navigationBarBackButtonHidden(true)
                .accentColor(Color.pink)
            }
        }
            .navigationBarTitle(Text("Станции по жанрам"), displayMode: .inline)
            .padding(.bottom, 80)

        }
        
    }
}

struct RadioModulDetail_Previews: PreviewProvider {
    static var previews: some View {
        RadioModulDetail()
    }
}
