//
//  ContentView.swift
//  AppleMusicSUI
//
//  Created by 1234 on 04.12.2023.
//

import SwiftUI

struct MainModul: View {
    @State var current = 0
    
    // miniplyer properties
    @State var expand = false
    @Namespace var animation
    
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
                SearchUIKit()
                    .tag(3)
                    .tabItem {
                        Image(systemName: "sparkle.magnifyingglass")
                        Text("Search UIKit")
                    }
            }.accentColor(Color.pink)
        }
        .safeAreaInset(edge: .bottom) {
            MiniPlayer(animation: animation, expend: $expand)
        }
        .ignoresSafeArea(expand ? .all : .keyboard)
        
        
    }
}

struct MainModul_Previews: PreviewProvider {
    static var previews: some View {
        MainModul()
    }
}
