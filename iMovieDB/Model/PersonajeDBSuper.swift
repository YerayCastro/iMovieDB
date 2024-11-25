//
//  PersonajeDBSuper.swift
//  iMovieDB
//
//  Created by Yery Castro on 22/11/24.
//

import Foundation

struct PersonajeDBSuper: Codable, Identifiable {
    let id: Int
    let name: String
    let genre: Genre4
    let race: String
    let image: String
    let planet, description, biography: String
    let transformations: [Transformation4]
}

enum Genre4: String, Codable {
    case asexuado = "Asexuado"
    case femenino = "Femenino"
    case masculino = "Masculino"
}


struct Transformation4: Codable {
    let id: Int
    let title: String
    let image: String
    let description: String
}
