//
//  PersonajeDBSuperHeaderView.swift
//  iMovieDB
//
//  Created by Yery Castro on 22/11/24.
//

import SwiftUI

struct DetailDBSuperHeaderView: View {
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
                Rectangle()
                    .fill(Color.blue.opacity(0.2).gradient)
                    .frame(height: 320)
                    .overlay {
                        VStack {
                            HStack {
                                if let url = URL(string: personaje.image) {
                                    
                                    AsyncImage(url: url) { image in
                                        image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 200)
                                            .padding(.top, 50)
                                    } placeholder: {
                                        Image(systemName: "person")
                                            .font(.largeTitle)
                                    }
                                }
                                
                            }
                            
                            Text(personaje.name)
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
        
                    
        
    }
}

#Preview {
    DetailDBSuperHeaderView(selected: .constant(.test4))
}


//if let url = URL(string: personaje.image) {
//    AsyncImage(url: url) { image in
//        Rectangle()
//            .fill(Color.blue.opacity(0.2).gradient)
//            .frame(height: 320)
//            .overlay {
//                VStack {
//                    image
//                        .resizable()
//                        .scaledToFit()
//                        .frame(height: 200)
//                }
//                
//            }
//        
//    } placeholder: {
//        
//    }
//    
//}
