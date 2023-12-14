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
    @State private var searchPlaceholder: String = "Ваша медиатека"
    @State private var selectedSearch = 1
    
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
                                .toolbarRole(.editor)
                                .navigationBarTitle(card.nameCard, displayMode: .inline)
   
                        } label: {
                            CategoryCardRow(card: card)
                            
                        }
                    }
                }
                
                .navigationTitle("Поиск")
                
                .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always), prompt: self.$searchPlaceholder.wrappedValue) {
                    
                    VStack(alignment: .leading) {
                        Picker("SearchSource", selection: $selectedSearch) {
                            Text("Apple Music").tag(0)
                            Text("Ваша медиатека").tag(1)
                        }
                    .onChange(of: selectedSearch) { tag in
                        if tag == 0 {
                            searchPlaceholder = "Артисты, песни, тексты и др."
                        } else {
                            searchPlaceholder = "Ваша медиатека"
                        }
                    }
                    .pickerStyle(.segmented)
                }
                    
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
                .padding(.bottom, 80)

            }

        }

    }
}

struct SearchModul_Previews: PreviewProvider {
    static var previews: some View {
        SearchModul()
    }
}


