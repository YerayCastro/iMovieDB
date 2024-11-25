//
//  DragonesCardView.swift
//  iMovieDB
//
//  Created by Yery Castro on 25/11/24.
//

import SwiftUI

struct DragonesCardView: View {
    let personaje: PersonajeDragones
    @State var showSheet = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.green.opacity(0.3).gradient)
            .frame(height: 300)
            .padding()
            .overlay {
                VStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.green.opacity(0.5).gradient)
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 150, height: 200)
                        .overlay {
                            if let url = URL(string: personaje.image) {
                                AsyncImage(url: url) { image in
                                    image
                                        .resizable()
                                        .scaledToFit()
                                } placeholder: {
                                    Image(systemName: "person")
                                        .font(.largeTitle)
                                }
                            }
                        }
                        .padding(.trailing, 140)
                        .padding(.bottom)
                        Text(personaje.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                        
                }
            }
            .onTapGesture {
                showSheet = true
            }
            .sheet(isPresented: $showSheet) {
                DragonesDetailView(personaje: personaje)
            }
    }
}

#Preview {
    DragonesCardView(personaje: .test5)
}
