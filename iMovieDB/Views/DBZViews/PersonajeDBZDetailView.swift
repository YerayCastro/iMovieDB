//
//  PersonDetailView.swift
//  iMovieDB
//
//  Created by Yery Castro on 19/11/24.
//

import SwiftUI

struct PersonajeDBZDetailView: View {
    @EnvironmentObject var vm: PersonajesVM
    let personaje: PersonajeDBZ
    
    var body: some View {
        
        Form {
            Section {
                DetailDBZHeaderView(personaje: personaje)
                }
            Section {
                PersonajeDBZFormView(title: "Planeta", label: personaje.planet)
                PersonajeDBZFormView(title: "Raza", label: personaje.race)
                PersonajeDBZFormView(title: "Género", label: personaje.genre.rawValue)
                PersonajeDBZFormView(title: "ID", label: "\(personaje.id)")
                
            } header: {
                Text("Datos Personales")
                }
            Section {
                PersonajeDBZFormView(title: "Descripción", label: personaje.description)
                
            } header: {
                Text("Datos Descriptivos")
                }
            Section {
                PersonajeDBZFormView(title: "Descripción", label: personaje.biography)
                
            } header: {
                Text("Datos Bibliográficos")
                }
            }
        }
    }

#Preview {
    PersonajeDBZDetailView(personaje: .test2)
        .environmentObject(PersonajesVM.test)
}
//            HStack {
//                VStack(alignment: .leading) {
//                    DetailDBCellView(title: "Planeta", label: personaje.planet)
//                    DetailDBCellView(title: "Raza", label: personaje.race)
//                    DetailDBCellView(title: "Género", label: personaje.genre.rawValue)
//                    DetailDBCellView(title: "Biografía", label: personaje.biography)
//                    DetailDBCellView(title: "Descripción", label: personaje.description)
//                    DetailDBCellView(title: "ID", label: "\(personaje.id)")
//                    }
//                Spacer()
//                }
//                .padding()
