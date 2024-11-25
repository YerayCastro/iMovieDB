//
//  PersonajeDBSuperCardView.swift
//  iMovieDB
//
//  Created by Yery Castro on 22/11/24.
//

import SwiftUI

struct PersonajeDBSuperCardView: View {
    let personaje: PersonajeDBSuper
    
    var body: some View {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.2))
                .stroke(.black)
                .frame(width: 130 , height: 150)
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
                                .font(.callout)
                                .bold()
                                .padding(.bottom)
                        }
                    }
                }
                .padding()
        
    }
}

#Preview {
    PersonajeDBSuperCardView(personaje: .test4)
}
