//
//  PersonajeDBGT.swift
//  iMovieDB
//
//  Created by Yery Castro on 21/11/24.
//

import Foundation

struct PersonajeDBGT: Codable, Identifiable {
    let id: Int
    let name: String
    let genre: Genre3
    let race: String
    let image: String
    let planet: Planet3
    let description, biography: String
    let transformations: [Transformation3]
}

enum Genre3: String, Codable {
    case femenino = "Femenino"
    case masculino = "Masculino"
}

enum Planet3: String, Codable {
    case desconocido = "Desconocido"
    case namek = "Namek"
    case planetaVegeta = "Planeta Vegeta"
    case tierra = "Tierra"
}

struct Transformation3: Codable {
    let id: Int
    let title: String
    let image: String
    let description: String
}
