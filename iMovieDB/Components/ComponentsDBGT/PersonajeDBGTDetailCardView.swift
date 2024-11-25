//
//  PersonajeDetailCardView.swift
//  iMovieDB
//
//  Created by Yery Castro on 25/11/24.
//

import SwiftUI

struct PersonajeDBGTDetailCardView: View {
    let personaje: PersonajeDBGT
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.gray.opacity(0.7))
            .frame(width: 400, height:  400)
            .padding(.leading)
            .padding(.trailing)
            .overlay {
                VStack {
                    if let url = URL(string: personaje.image) {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .padding(.top)
                        } placeholder: {
                            Image(systemName: "person")
                                .font(.largeTitle)
                                .bold()
                        }
                        Text(personaje.name)
                            .font(.headline)
                            .bold()
                            .padding(.bottom)
                    }
                }
                
            }
            
    }
}

#Preview {
    PersonajeDBGTDetailCardView(personaje: .test3)
}