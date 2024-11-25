//
//  PersonDetailView.swift
//  iMovieDB
//
//  Created by Yery Castro on 19/11/24.
//

import SwiftUI

struct PersonajeDBDetailView: View {
    @EnvironmentObject var vm: PersonajesVM
    let personaje: PersonajeDB
    
    var body: some View {
        ScrollView {
            DetailDBHeaderView(personaje: personaje)
            HStack {
                VStack(alignment: .leading) {
                    DetailDBCellView(title: "Planeta", label: personaje.planet.rawValue)
                    DetailDBCellView(title: "Raza", label: personaje.race)
                    DetailDBCellView(title: "Género", label: personaje.genre.rawValue)
                    DetailDBCellView(title: "ID", label: "\(personaje.id)")
                    DetailDBCellView(title: "Descripción", label: personaje.description)
                    DetailDBCellView(title: "Biografía", label: personaje.biography)
                    }
                Spacer()
                }
                .padding()
            }
        }
    }

#Preview {
    PersonajeDBDetailView(personaje: .test)
        .environmentObject(PersonajesVM.test)
}
