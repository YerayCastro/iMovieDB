//
//  PersonajeDBZFormView.swift
//  iMovieDB
//
//  Created by Yery Castro on 21/11/24.
//

import SwiftUI

struct PersonajeDBZFormView: View {
    let title: String
    let label: String
    
    var body: some View {
            Section {
                HStack(alignment: .firstTextBaseline) {
                    Text(title)
                        .bold()
                    Spacer()
                    Text(label)
                        .foregroundStyle(.secondary)
                }
                
            }
    }
}

#Preview {
    PersonajeDBZFormView(title: "Planeta", label: "Tierra")
}
