//
//  MiniPlayer.swift
//  AppleMusicSUI
//
//  Created by 1234 on 04.12.2023.
//

import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        VStack{
            
            HStack(spacing: 15) {
                
                Image("guf")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .cornerRadius(8)
                
                Text("Guf - Ice Baby")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
                
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                        .font(.title2)
                        .foregroundColor(.primary)
                }
            }
            .padding(.horizontal)
        }
        .frame(height: 80)
        .background(
            VStack {
                BlurView()
                Divider()
            }
        )
        .offset(y: -48)
    }
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
