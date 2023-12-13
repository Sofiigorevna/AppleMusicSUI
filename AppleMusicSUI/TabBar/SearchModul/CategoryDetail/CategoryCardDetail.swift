//
//  CategoryCardDetail.swift
//  AppleMusicSUI
//
//  Created by 1234 on 12.12.2023.
//

import SwiftUI

struct CategoryCardDetail: View {
    @State private var cards = Cards.category
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
                                    DetailCards(card: card)
                                }
                                
                            }.padding()
                        }
                        
                        NavigationLink {
                            
                           
                            
                        } label: {
                            HStack {
                                Text("Популярные плейлисты")
                                Image(systemName: "chevron.right")
                                    .renderingMode(.original)
                                
                                    .font(.subheadline)
                            }
                            
                        }
                        .buttonStyle(.plain)
                        .font(.title2)
                        .statusBarHidden(false)
                        .padding(.bottom, -10)
                        .padding(.trailing, 90)
                        
                       
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: rowsTwo, spacing: 0.1){
                                ForEach(genre) { card in
                                    StackMiniCards(card: card)
                                }
                            }
                        }
                    }
                    .padding(.bottom, 80)

                   
                }
                
                    
            }
        }
    }


struct CategoryCardDetail_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardDetail()
    }
}
