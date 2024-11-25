//
//  DragonesView.swift
//  iMovieDB
//
//  Created by Yery Castro on 20/11/24.
//

import SwiftUI

struct DragonesView: View {
    @EnvironmentObject var vm: PersonajesVM
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(vm.personajesDragones) { dragon in
                        DragonesCardView(personaje: dragon)
                    }
                }
            }
            .navigationTitle("Dragones")
        }
    }
}

#Preview {
    DragonesView()
        .environmentObject(PersonajesVM.test5)
}
