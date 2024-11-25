//
//  PersonajeDBGTHeaderView.swift
//  iMovieDB
//
//  Created by Yery Castro on 22/11/24.
//

import SwiftUI

struct PersonajeDBGTHeaderView: View {
    var title: String
    var label: String
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.gray.opacity(0.7))
                .frame(height: 30)
                .padding()
                .overlay {
                    Text(title)
                        .font(.headline)
                }
            Text(label)
                .padding(.leading)
            
        }
    }
}

#Preview {
    PersonajeDBGTHeaderView(title: "Planeta", label: "Tierra")
}
