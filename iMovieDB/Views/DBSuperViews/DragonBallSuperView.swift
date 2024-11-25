//
//  DragonBallSuperView.swift
//  iMovieDB
//
//  Created by Yery Castro on 20/11/24.
//

import SwiftUI

struct DragonBallSuperView: View {
    @EnvironmentObject var vm: PersonajesVM
    @State var selected: PersonajeDBSuper?
    var mainScroll: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(vm.personajesDBSuper) { personaje in
                                PersonajeDBSuperCardView(personaje: personaje)
                                    .onTapGesture {
                                        selected = personaje
                                    }
                            }
                        }
                    }
                    ForEach(vm.personajesDBSuper) { personaje in
                        PersonajeDBSuperCoverView(personaje: personaje)
                            .onTapGesture {
                                selected = personaje
                            }
                    }
                }
            }
            .navigationTitle("Dragon Ball Super")
        }
    }
    
    var body: some View {
        ZStack {
            mainScroll
                .opacity(selected == nil ? 1.0 : 0.0)
            if selected != nil {
                DragonBallSuperDetailView(selected: $selected)
                    
            }
        }
    }
}

#Preview {
    DragonBallSuperView()
        .environmentObject(PersonajesVM.test4)
}
