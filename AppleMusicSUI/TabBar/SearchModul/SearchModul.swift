//
//  SearchModul.swift
//  AppleMusicSUI
//
//  Created by 1234 on 04.12.2023.
//

import SwiftUI

struct SearchModul: View {
    @StateObject var object = SearchObservableObject()
    @State private var searchTerm = ""
    
    @State private var cards = Cards.category
    
    let rowsTwo = Array(repeating: GridItem(.adaptive(minimum: 30)), count: 5)
    let rows = Array(repeating: GridItem(.fixed(180)), count: 2)
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                
                Section("Поиск по категориям") {
                }.font(.title2)
                    .bold()
                    .padding(.bottom, -3)
                    .padding(.trailing, 130)
                
                LazyVGrid(columns: rows) {
                    ForEach(cards) { card in
                        NavigationLink {
                            CategoryCardDetail()
                                .navigationBarTitle(Text(card.nameCard), displayMode: .large)
                            
                                .toolbar {
                                    ToolbarItem(placement: .navigationBarLeading ) {
                                        NavigationLink {
                                            SearchModul()
                                                .navigationBarBackButtonHidden(true)
                                            
                                        } label: {
                                            Image(systemName: "chevron.left")
                                                .renderingMode(.original)
                                            
                                        }
                                        .accentColor(Color.pink)
                                    }
                                }
                                .navigationBarBackButtonHidden(true)
                            
                        } label: {
                            CategoryCardRow(card: card)
                            
                        }
                    }
                }
                
                .navigationTitle("Поиск")
                
                .searchable(text: $searchTerm, prompt: "Артисты, песни в Apple Misic") {
                    
                    Section("Альбомы") {
                        ForEach(object.searchResults) { card in
                            RadioModulDetailRow(card: card)
                        } .onChange(of: searchTerm) { searchTerm in
                            
                            object.searchResults = object.data.filter({ card in
                                card.nameCard.contains(searchTerm)
                                
                            })
                        }
                        
                    }
                    
                    Section("Артисты, песни") {
                        ForEach(object.searchSongsResults) { song in
                            SongRowView(song: song)
                        }.onChange(of: searchTerm) { searchTerm in
                        object.searchSongsResults = object.songsData.filter({ song in
                            song.trackName.contains(searchTerm) ||
                            song.artistName.contains(searchTerm)
                        })
                    }
                }
                }
            }

        }
        .padding(.bottom, 80)

    }
}

struct SearchModul_Previews: PreviewProvider {
    static var previews: some View {
        SearchModul()
    }
}


