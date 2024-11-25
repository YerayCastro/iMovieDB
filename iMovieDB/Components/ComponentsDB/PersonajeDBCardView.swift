//
//  PersonajeCardView.swift
//  iMovieDB
//
//  Created by Yery Castro on 19/11/24.
//

import SwiftUI



struct PersonajeDBCardView: View {
    let personaje: PersonajeDB
    
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(LinearGradient(colors: [.blue, .red], startPoint: .center, endPoint: .bottomTrailing))
                .frame(width: 160, height: 200)
                .overlay {
                    if let url = URL(string: personaje.image) {
                        AsyncImage(url: url) { image in
                            VStack {
                                image
                                    .resizable()
                                    .scaledToFit()
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Material.ultraThin)
                                    .frame(height: 30)
                                    .overlay {
                                        Text(personaje.name)
                                            .font(.headline)
                                            .bold()
                                    }
                            }
                            
                        } placeholder: {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 160, height: 200)
                        }
                    } else {
                        Text("URL no válida")
                    }
                }
                .overlay {
                    Button {
                        showSheet.toggle()
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.clear)
                    }
                }
                .sheet(isPresented: $showSheet) {
                    PersonajeDBDetailView(personaje: personaje)
                }
        }
    }
}

#Preview {
    PersonajeDBCardView(personaje: .test)
}
