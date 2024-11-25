//
//  DragonesDetailCardView.swift
//  iMovieDB
//
//  Created by Yery Castro on 25/11/24.
//

import SwiftUI

struct DragonesDetailCardView: View {
    @Environment(\.dismiss) var dismiss
    let personaje: PersonajeDragones
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.green.opacity(0.3).gradient)
            .stroke(Color.black, lineWidth: 2)
            .frame(width: 250, height: 350)
            .overlay {
                HStack {
                    if let url = URL(string: personaje.image) {
                        AsyncImage(url: url) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200, height: 300)
                                .overlay {
                                    Button {
                                        dismiss()
                                    } label: {
                                        Image(systemName: "xmark")
                                            .symbolVariant(.fill)
                                            .symbolVariant(.circle)
                                            .font(.largeTitle)
                                            .foregroundStyle(.blue)
                                            .padding(.bottom, 280)
                                            .padding(.leading, 170)
                                    }
                                }
                        } placeholder: {
                            Image(systemName: "person")
                                .font(.largeTitle)
                        }
                    }
                }
            }
    }
}

#Preview {
    DragonesDetailCardView(personaje: .test5)
}
