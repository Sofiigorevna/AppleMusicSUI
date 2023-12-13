//
//  SearchObservableObject.swift
//  AppleMusicSUI
//
//  Created by 1234 on 13.12.2023.
//

import Foundation

class SearchObservableObject: ObservableObject {
     var data: [Cards] = []
    var songsData: [Songs] = []
    @Published var searchResults: [Cards] = []
    @Published var searchSongsResults: [Songs] = []
    
    init() {
        data = Cards.category
        songsData = Songs.all
    }
}
