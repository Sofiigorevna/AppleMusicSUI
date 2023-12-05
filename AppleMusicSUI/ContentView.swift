//
//  ContentView.swift
//  AppleMusicSUI
//
//  Created by 1234 on 04.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var current = 0
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $current) {
                LibraryView()
                    .tag(0)
                    .tabItem {
                        Image(systemName: "play.square.stack")
                        Text("Медиатека")

                    }
                RadioModul()
                    .tag(1)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }

                SearchModul()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }

            }.accentColor(Color.pink)
            
            MiniPlayer()
                
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
