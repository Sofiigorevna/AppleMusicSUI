//
//  MediaList.swift
//  AppleMusicSUI
//
//  Created by 1234 on 05.12.2023.
//

import SwiftUI

struct MediaList: View  {
    
    
    @State private var selectedMediaIDs: Set<UUID> = []
    
    @State private var models = ModelMedia.panel
    
    
    var body: some View {
        NavigationView {
            List(selection: $selectedMediaIDs) {
                ForEach(models, id: \.id) { model in
                    MediaRow(media: model).tag(model)
                }
                .onMove(perform: { IndexSet, index in
                    self.models.move(fromOffsets: IndexSet, toOffset: index)})
            }.listStyle(.automatic)
                .environment(\.editMode, .constant(.active))
                .navigationTitle("Медиатека")
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink("Готово") {
                            LibraryView()
                                .navigationBarBackButtonHidden(true)
                        }.accentColor(Color.pink)
                    }
                }
        }
    }
}

struct MediaList_Previews: PreviewProvider {
    static var previews: some View {
        MediaList()
    }
}
