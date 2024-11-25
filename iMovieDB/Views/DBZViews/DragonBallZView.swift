//
//  DragonBallZView.swift
//  iMovieDB
//
//  Created by Yery Castro on 20/11/24.
//

import SwiftUI

struct DragonBallZView: View {
    @EnvironmentObject var vm: PersonajesVM
    let item = GridItem(.adaptive(minimum: 160))
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.personajesDBZ) { personaje in
                    NavigationLink(destination: PersonajeDBZDetailView(personaje: personaje)) {
                        PersonajeDBZCardView(personaje: personaje)
                    }
                }
            }
            .navigationTitle("Dragon Ball Z")
        }
    }
}

#Preview {
    DragonBallZView()
        .environmentObject(PersonajesVM.test2)
}
