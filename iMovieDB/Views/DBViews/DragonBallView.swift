//
//  ContentView.swift
//  iMovieDB
//
//  Created by Yery Castro on 19/11/24.
//

import SwiftUI

struct DragonBallView: View {
    @EnvironmentObject var vm: PersonajesVM
    let item = GridItem(.adaptive(minimum: 160))
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [item]) {
                    ForEach(vm.personajesDB) { personaje in
                        PersonajeDBCardView(personaje: personaje)
                    }
                }
                
            }
            .navigationTitle("Dragon Ball ")
        }
    }
}

#Preview {
    NavigationStack {
        DragonBallView()
            .environmentObject(PersonajesVM.test)
    }
}
