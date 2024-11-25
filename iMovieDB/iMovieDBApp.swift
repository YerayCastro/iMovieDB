//
//  iMovieDBApp.swift
//  iMovieDB
//
//  Created by Yery Castro on 19/11/24.
//

import SwiftUI

@main
struct iMovieDBApp: App {
    @StateObject var vm =  PersonajesVM()
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .environmentObject(vm)
    }
}
