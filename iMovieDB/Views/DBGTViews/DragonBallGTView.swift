//
//  DragonBallGTView.swift
//  iMovieDB
//
//  Created by Yery Castro on 20/11/24.
//

import SwiftUI

struct DragonBallGTView: View {
    @EnvironmentObject var vm: PersonajesVM
    @State var selected: PersonajeDBGT?
    var mainScroll: some View {
        NavigationStack {
            ScrollView {
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(vm.personajesDBGT) { personaje in
                            PersonajeDBGTCicleView(personaje: personaje)
                                .onTapGesture {
                                    selected = personaje
                                }
                        }
                    }
                }
                .padding(.top)
                ForEach(vm.personajesDBGT) { personaje in
                    PersonajeDBGTCardView(personaje: personaje)
                        .onTapGesture {
                            selected = personaje
                        }
                }
                .padding(.top)
        
            }
            .navigationTitle("Dragon Ball GT")
        }
    }
    
    
    var body: some View {
        ZStack {
            mainScroll
                .opacity(selected == nil ? 1.0 : 0.0)
            if selected != nil {
                DragonBallGTDetailView(selected: $selected)
                    
            }
        }
    }
}

#Preview {
    DragonBallGTView()
        .environmentObject(PersonajesVM.test3)
}


