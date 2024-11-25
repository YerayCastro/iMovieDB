//
//  PersonajeDBSuperCoverView.swift
//  iMovieDB
//
//  Created by Yery Castro on 22/11/24.
//

import SwiftUI

struct PersonajeDBSuperCoverView: View {
    let personaje: PersonajeDBSuper
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.blue.opacity(0.2).gradient)
            .frame(height: 230)
            .overlay {
                LazyVStack {
                    LazyHStack {
                        if let url = URL(string: personaje.image) {
                            ZStack {
                                AsyncImage(url: url) { image in
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 140, height: 150)
                                        .overlay {
                                            Circle()
                                                .frame(width: 180)
                                                .foregroundStyle(.white.opacity(0.3).gradient)
                                        }
                                } placeholder: {
                                    Image(systemName: "person")
                                        .font(.largeTitle)
                                        .bold()
                                }
                            }
                            LazyVStack(alignment: .leading) {
                                Text(personaje.name)
                                    .font(.title)
                                    .bold()
                                Text(personaje.race)
                                    .font(.headline)
                            }
                            .foregroundStyle(Color.white)
                            .padding(.leading, 30)
                            Spacer()
                        }
                    }
                }
                .padding(.bottom, 60)
                .padding(.leading, 15)
            }
    }
}

#Preview {
    PersonajeDBSuperCoverView(personaje: .test4)
}

