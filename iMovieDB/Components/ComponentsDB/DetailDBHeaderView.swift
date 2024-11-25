//
//  DetailHeaderView.swift
//  iMovieDB
//
//  Created by Yery Castro on 20/11/24.
//

import SwiftUI

struct DetailDBHeaderView: View {
    let personaje: PersonajeDB
    var body: some View {
        Text(personaje.name)
            .font(.title)
            .bold()
        RoundedRectangle(cornerRadius: 10)
            .fill(LinearGradient(colors: [.blue, .red], startPoint: .center, endPoint: .bottomTrailing))
            .frame(width: 300, height: 400)
            .overlay {
                
                if let url = URL(string: personaje.image) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 400)
                    } placeholder: {
                        Image(systemName: "person")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 400)
                    }
                } else {
                    Text("URL no válida")
                    }
                
            }
    }
}

#Preview {
    DetailDBHeaderView(personaje: .test)
}
