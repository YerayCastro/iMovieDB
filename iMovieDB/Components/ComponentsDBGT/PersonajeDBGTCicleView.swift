//
//  PersonajeDBGTCicleView.swift
//  iMovieDB
//
//  Created by Yery Castro on 21/11/24.
//

import SwiftUI

struct PersonajeDBGTCicleView: View {
    let personaje: PersonajeDBGT
    var body: some View {
        if let url = URL(string: personaje.image) {
            Circle()
                .fill(Color.gray.opacity(0.5))
                .frame(height: 100)
                .overlay {
                    VStack {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .padding(.top)
                            
                        } placeholder: {
                            Image(systemName: "person")
                                .font(.title)
                                .bold()
                        }
                        Text(personaje.name)
                            .font(.caption2)
                            .padding(.bottom)
                    }
                }
            
        }
    }
}

#Preview {
    PersonajeDBGTCicleView(personaje: .test3)
}
