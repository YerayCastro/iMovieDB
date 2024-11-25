//
//  DataModel.swift
//  iMovieDB
//
//  Created by Yery Castro on 19/11/24.
//

import Foundation

// MARK: - Personaje
struct PersonajeDB: Codable, Identifiable {
    let id: Int
    let name: String
    let genre: Genre
    let race: String
    let image: String
    let planet: Planet
    let description, biography: String
    let transformations: [Transformation]
}

enum Genre: String, Codable {
    case desconocido = "Desconocido"
    case femenino = "Femenino"
    case masculino = "Masculino"
}

enum Planet: String, Codable {
    case desconocido = "Desconocido"
    case namek = "Namek"
    case tierra = "Tierra"
    case vegetaCriadoEnLaTierra = "Vegeta, (criado en la tierra)"
}

// MARK: - Transformation
struct Transformation: Codable, Hashable {
    let id: Int
    let title: Title
    let image: String
    let description: String
}

enum Title: String, Codable {
    case empty = ""
    case ozaru = "Ozaru"
}
