//
//  DetailHeaderView.swift
//  iMovieDB
//
//  Created by Yery Castro on 20/11/24.
//

import SwiftUI

struct DetailDBZHeaderView: View {
    let personaje: PersonajeDBZ
    
    var body: some View {
        VStack(alignment: .center) {
                    if let url = URL(string: personaje.image) {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 300)
                        } placeholder: {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 400)
                        }
                    } else {
                        Text("URL no válida")
                        }
            Text(personaje.name)
                .font(.title)
                .bold()
                }
            
    }
}

#Preview {
    DetailDBZHeaderView(personaje: .test2)
}
