//
//  PersonajeDragones.swift
//  iMovieDB
//
//  Created by Yery Castro on 25/11/24.
//

import Foundation

struct PersonajeDragones: Codable, Identifiable {
    let id: Int
    let name, genre: String
    let race: Race
    let image: String
    let planet: Planet5
    let description, biography: String
    let transformations: [Transformation5]
    
}

enum Planet5: String, Codable {
    case empty = ""
    case namek = "Namek"
    case tierra = "Tierra"
}

enum Race: String, Codable {
    case diosDragon = "dios Dragon"
}

struct Transformation5: Codable {
    let id: Int
    let title, image, description: String
}
