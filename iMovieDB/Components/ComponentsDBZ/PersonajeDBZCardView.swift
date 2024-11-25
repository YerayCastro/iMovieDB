//
//  PersonajeCardView.swift
//  iMovieDB
//
//  Created by Yery Castro on 19/11/24.
//

import SwiftUI



struct PersonajeDBZCardView: View {
    let personaje: PersonajeDBZ
    
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationStack {
                    
            HStack(alignment: .top) {
                            if let url = URL(string: personaje.image) {
                                AsyncImage(url: url) { image in
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        .clipShape(Circle())
                                } placeholder: {
                                    Image(systemName: "person")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        .padding()
                                        .clipShape(Circle())
                                }
                            } else {
                                Text("No hay imagen")
                            }
                            VStack(alignment: .leading) {
                                Text(personaje.name)
                                    .font(.headline)
                                    .bold()
                                Text(personaje.race)
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                            }
                        }
                    
                
//                .overlay {
//                    Button {
//                        showSheet.toggle()
//                    } label: {
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(Color.clear)
//                    }
//                }
//                .sheet(isPresented: $showSheet) {
//                    PersonajeDBZDetailView(personaje: personaje)
//                }
            
//            if let url = URL(string: personaje.image) {
//                AsyncImage(url: url) { image in
//                    VStack {
//                        image
//                            .resizable()
//                            .scaledToFit()
//                        RoundedRectangle(cornerRadius: 10)
//                            .fill(Material.ultraThin)
//                            .frame(height: 30)
//                            .overlay {
//                                Text(personaje.name)
//                                    .font(.headline)
//                                    .bold()
//                            }
//                    }
//                    
//                } placeholder: {
//                    Image(systemName: "person")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 160, height: 200)
//                }
//            } else {
//                Text("URL no válida")
//            }
        }
    }
}

#Preview {
    PersonajeDBZCardView(personaje: .test2)
}
