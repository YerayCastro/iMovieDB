//
//  MainView.swift
//  iMovieDB
//
//  Created by Yery Castro on 20/11/24.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var vm: PersonajesVM
    var body: some View {
        TabView {
            Tab {
                DragonBallView()
                    .tag(Pages.dragonBall)
            } label: {
                Label("Dragon Ball", systemImage: "person")
            }
            Tab {
                DragonBallZView()
                    .tag(Pages.dragonBallZ)
            } label: {
                Label("Dragon Ball Z", systemImage: "person.circle")
            }
            Tab {
                DragonBallGTView()
                    .tag(Pages.dragonBallGT)
            } label: {
                Label("Dragon Ball GT", systemImage: "person.slash")
            }
            Tab {
                DragonBallSuperView()
                    .tag(Pages.dragonBallSuper)
            } label: {
                Label("Dragon Ball Super", systemImage: "person.fill.checkmark")
            }
            Tab {
                DragonesView()
                    .tag(Pages.dragones)
            } label: {
                Label("Dragones", systemImage: "person.fill.xmark")
            }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(PersonajesVM.test)
}
