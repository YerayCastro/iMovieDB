//
//  PersonajeDBGTMainView.swift
//  iMovieDB
//
//  Created by Yery Castro on 21/11/24.
//

import SwiftUI

struct PersonajeDBGTMainView: View {
    @EnvironmentObject var vm: PersonajesVM
    
    var body: some View {
        Text("Hola")
        
        
    }
}

#Preview {
    PersonajeDBGTMainView()
        .environmentObject(PersonajesVM.test3)
}
