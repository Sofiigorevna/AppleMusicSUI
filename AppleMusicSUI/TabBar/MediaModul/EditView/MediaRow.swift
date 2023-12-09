//
//  MediaRow.swift
//  AppleMusicSUI
//
//  Created by 1234 on 05.12.2023.
//

import SwiftUI

struct MediaRow: View {
    
    var media: ModelMedia
    
    var body: some View {
        HStack {
            media.image
                .frame(width: 50, height: 50)
                .foregroundColor(Color.pink)
            
            Text(media.title)
                .font(.title2)
            Spacer()
        }
    }
}

struct MediaRow_Previews: PreviewProvider {
    static var previews: some View {
        MediaRow(media: ModelMedia.panel[0])
    }
}
