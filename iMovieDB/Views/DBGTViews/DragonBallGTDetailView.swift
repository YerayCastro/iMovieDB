//
//  DragonBallGTDetailView.swift
//  iMovieDB
//
//  Created by Yery Castro on 21/11/24.
//

import SwiftUI

struct DragonBallGTDetailView: View {
    @EnvironmentObject var vm: PersonajesVM
    @Environment(\.dismiss) private var dismiss
    private var personaje: PersonajeDBGT!
    @State private var loaded = false
    @Binding var selected: PersonajeDBGT?
    
    
    init(selected: Binding<PersonajeDBGT?>) {
        _selected = selected
        
        if let personaje = selected.wrappedValue {
            self.personaje = personaje
        }
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .trailing) {
                Button {
                    selected = nil
                } label: {
                    Image(systemName: "xmark")
                        .symbolVariant(.circle)
                        .symbolVariant(.fill)
                        .font(.title)
                        .foregroundStyle(.gray)
                }
                .padding(.trailing)
                PersonajeDBGTDetailCardView(personaje: personaje)
                PersonajeDBGTHeaderView(title: "Planeta", label: personaje.planet.rawValue)
                PersonajeDBGTHeaderView(title: "Raza", label: personaje.race)
                PersonajeDBGTHeaderView(title: "Género", label: personaje.genre.rawValue)
                PersonajeDBGTHeaderView(title: "ID", label: "\(personaje.id)")
                PersonajeDBGTHeaderView(title: "Descripción", label: personaje.description)
                PersonajeDBGTHeaderView(title: "Biografía", label: personaje.biography)
                
            }
        }
        .animation(.default, value: loaded)
        .onAppear {
            loaded = true
        }
    }
}

#Preview {
    DragonBallGTDetailView(selected: .constant(.test3))
}



