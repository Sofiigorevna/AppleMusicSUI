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
            .padding(.bottom, 80)
        }
    }
}

struct RadioModulDetail_Previews: PreviewProvider {
    static var previews: some View {
        RadioModulDetail()
    }
}
