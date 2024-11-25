//
//  DragonesDetailView.swift
//  iMovieDB
//
//  Created by Yery Castro on 25/11/24.
//

import SwiftUI

struct DragonesDetailView: View {
    let personaje: PersonajeDragones
    
    var body: some View {
        ZStack {
            Color.green.opacity(0.1)
            ScrollView {
                VStack(alignment: .leading) {
                    VStack {
                        DragonesDetailCardView(personaje: personaje)
                            .padding(.top, 100)
                        Text("\(personaje.name)")
                            .font(.title)
                            .bold()
                            .padding()
                    }
                    DragonesDetailCellView(title: "Planeta", label: personaje.planet.rawValue)
                    DragonesDetailCellView(title: "Raza", label: personaje.race.rawValue)
                    DragonesDetailCellView(title: "Género", label: "Dragón")
                    DragonesDetailCellView(title: "ID", label: "\(personaje.id)")
                    DragonesDetailCellView(title: "Descripción", label: personaje.description)
                    DragonesDetailCellView(title: "Biografía", label: personaje.biography)
                }
                .padding(.leading, 20)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DragonesDetailView(personaje: .test5)
}
