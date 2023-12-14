//
//  SongsDetail.swift
//  AppleMusicSUI
//
//  Created by 1234 on 14.12.2023.
//

import SwiftUI

struct SongsDetail: View {
    @State private var songs = Songs.all

    var body: some View {
        NavigationView {
            List {
                ForEach(songs) { song in
                    SongRowView(song: song)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct SongsDetail_Previews: PreviewProvider {
    static var previews: some View {
        SongsDetail()
    }
}
