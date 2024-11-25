//
//  Network.swift
//  MangasLibrary
//
//  Created by Yery Castro on 19/3/24.
//

import Foundation

protocol DataInteractor {
    func getPersonajesDB() async throws -> [PersonajeDB]
    func getPersonajesDBZ() async throws -> [PersonajeDBZ]
    func getPersonajesDBGT() async throws -> [PersonajeDBGT]
    func getPersonajesDBSuper() async throws -> [PersonajeDBSuper]
    func getPersonajesDragones() async throws -> [PersonajeDragones]
}

struct Network: DataInteractor {
    func postJSON(request: URLRequest, status: Int = 200) async throws {
        let (_, response) = try await URLSession.shared.getData(request: request)
        if response.statusCode != status {
            throw NetworkError.statusCode(response.statusCode)
        }
    }
    
    func getPersonajesDB() async throws -> [PersonajeDB] {
        try await getJSON(request: .get(url: .urlDB), type: [PersonajeDB].self)
    }
    
    func getPersonajesDBZ() async throws -> [PersonajeDBZ] {
        try await getJSON(request: .get(url: .urlDBZ), type: [PersonajeDBZ].self)
    }
    
    func getPersonajesDBGT() async throws -> [PersonajeDBGT] {
        try await getJSON(request: .get(url: .urlDBGT), type: [PersonajeDBGT].self)
    }
    
    func getPersonajesDBSuper() async throws -> [PersonajeDBSuper] {
        try await getJSON(request: .get(url: .urlDBSuper), type: [PersonajeDBSuper].self)
    }
    
    func getPersonajesDragones() async throws -> [PersonajeDragones] {
        try await getJSON(request: .get(url: .urlDBDragones), type: [PersonajeDragones].self)
    }
    
}


