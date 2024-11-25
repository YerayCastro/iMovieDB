//
//  PersonajesDBZ.swift
//  iMovieDB
//
//  Created by Yery Castro on 21/11/24.
//

import Foundation

struct PersonajeDBZ: Codable, Identifiable {
    let id: Int
    let name: String
    let genre: Genre2
    let race: String
    let image: String
    let planet, description, biography: String
    let transformations: [Transformation2]
}

enum Genre2: String, Codable {
    case asexuado = "Asexuado"
    case femenino = "Femenino"
    case intersexuado = "Intersexuado"
    case masculino = "Masculino"
    case razaDeDodoria = "Raza de Dodoria"
}

// MARK: - Transformation
struct Transformation2: Codable {
    let id: Int?
    let title: String?
    let image: String
    let description: String
    let trans: Int?
}
