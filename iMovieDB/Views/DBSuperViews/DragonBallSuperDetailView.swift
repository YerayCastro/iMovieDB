//
//  DragonBallSuperDetailView.swift
//  iMovieDB
//
//  Created by Yery Castro on 22/11/24.
//

import SwiftUI

struct DragonBallSuperDetailView: View {
//    let personaje: PersonajeDBSuper
    private var personaje: PersonajeDBSuper!
    @State private var loaded = false
    @Binding var selected: PersonajeDBSuper?
    
    
    init(selected: Binding<PersonajeDBSuper?>) {
        _selected = selected
        
        if let personaje = selected.wrappedValue {
            self.personaje = personaje
        }
    }
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.1)
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    DetailDBSuperHeaderView(selected: .constant(personaje))
                        .overlay {
                            HStack{
                                Spacer()
                                Button {
                                    selected = nil
                                } label: {
                                    Image(systemName: "xmark")
                                        .symbolVariant(.circle)
                                        .symbolVariant(.fill)
                                        .font(.title)
                                        
                                }
                                .padding()
                                .padding(.bottom, 100)
                            }
                        }
                    DetailDBSuperCellView(title: "Planeta", label: personaje.planet)
                    DetailDBSuperCellView(title: "Raza", label: personaje.race)
                    DetailDBSuperCellView(title: "Género", label: personaje.genre.rawValue)
                    DetailDBSuperCellView(title: "ID", label: "\(personaje.id)")
                    DetailDBSuperCellView(title: "Descripción", label: personaje.description)
                    DetailDBSuperCellView(title: "Biografía", label: personaje.biography)
                }
            }
            .animation(.default, value: loaded)
            .onAppear {
                loaded = true
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DragonBallSuperDetailView(selected: .constant(.test4))
}


//ScrollView {
//    VStack {
//        DetailDBSuperHeaderView(personaje: personaje)
//        
//    }
//    
//    
//}
//.ignoresSafeArea()

//ScrollView {
//    VStack {
//        DetailDBSuperHeaderView(personaje: personaje)
//    }
//    
//    LazyVStack {
//        Color.black.opacity(0.2)
//            .frame( height: .infinity)
//    }
//}
//.ignoresSafeArea()
