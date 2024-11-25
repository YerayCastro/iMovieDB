//
//  Pages.swift
//  iMovieDB
//
//  Created by Yery Castro on 20/11/24.
//

import SwiftUI

enum Pages {
    case dragonBall
    case dragonBallZ
    case dragonBallGT
    case dragonBallSuper
    case dragones
    
    @ViewBuilder
        var view: some View {
            switch self {
            case .dragonBall:
                DragonBallView()
            case .dragonBallZ:
                DragonBallZView()
            case .dragonBallGT:
                DragonBallGTView()
            case .dragonBallSuper:
                DragonBallSuperView()
            case .dragones:
                DragonesView()
            }
        }
}
