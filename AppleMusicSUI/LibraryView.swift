//
//  LibraryView.swift
//  AppleMusicSUI
//
//  Created by 1234 on 04.12.2023.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center) {
                Text("Ищите свою музыку?")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .padding(2)
                Text("Здесь появится купленная Вами в iTunes Store музыка.")
                    .font(.system(size: 17))
                    .multilineTextAlignment(.center)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
            }
            .navigationTitle("Медиатека")

            .toolbar {

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Править") {print("new scene")}
                }
            }
        }
    }
    
}
        
        

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
