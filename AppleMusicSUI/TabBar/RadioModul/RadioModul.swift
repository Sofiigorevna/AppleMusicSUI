//
//  RadioModul.swift
//  AppleMusicSUI
//
//  Created by 1234 on 04.12.2023.
//

import SwiftUI

struct RadioModul: View {
    @State private var cards = Cards.all
    @State private var genre = Cards.genre
    
    let rows = Array(repeating: GridItem(.fixed(150)), count: 1)
    let rowsTwo = Array(repeating: GridItem(.fixed(60)), count: 1)
    let columns = [  GridItem(.fixed(200)), GridItem(.fixed(200)) ]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack{
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rows, spacing: 25){
                            ForEach(cards) { card in
                                StackRow(card: card)
                            }
                            
                        }.padding()
                    }
                    
                    NavigationLink {
                        
                        RadioModulDetail()
                            .navigationBarBackButtonHidden(true)
                        
                    } label: {
                        HStack {
                            Text("Станции по жанрам")
                            Image(systemName: "chevron.right")
                                .renderingMode(.original)
                            
                                .font(.subheadline)
                        }
                        
                    }
                    .buttonStyle(.plain)
                    .font(.title2)
                    .statusBarHidden(false)
                    .padding(.bottom, -10)
                    .padding(.trailing, 140)
                    
                    ScrollView(.horizontal) {
                        LazyHGrid(rows: rowsTwo, spacing: 0.1){
                            ForEach(genre) { card in
                                StackMiniCards(card: card)
                            }
                        }
                    }

                    .navigationTitle("Радио")
                }
                .padding(.bottom, 80)

               
            }
        }
    }
}

struct RadioModul_Previews: PreviewProvider {
    static var previews: some View {
        RadioModul()
    }
}
