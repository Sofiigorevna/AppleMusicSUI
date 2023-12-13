//
//  SongRowView.swift
//  AppleMusicSUI
//
//  Created by 1234 on 12.12.2023.
//

import SwiftUI

struct SongRowView: View {
    var song: Songs
    
    var body: some View {
        HStack{
            Image(song.image)
                .resizable()
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(song.trackName)
                    .bold()
                    .font(Font.system(size: 22))
                
                Text(song.artistName)
                    .font(Font.system(size: 20))
                    .font(.subheadline)

            }
        }.padding()
    }
}

struct SongRowView_Previews: PreviewProvider {
    static var previews: some View {
        SongRowView(song: Songs(image: "toxic", artistName: "Britney Spears ", trackName: "Toxic"))
    }
}
