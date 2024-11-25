//
//  MangasVM.swift
//  MangasLibrary
//
//  Created by Yery Castro on 19/3/24.
//

import SwiftUI

final class PersonajesVM: ObservableObject {
    let network: DataInteractor
    @Published var personajesDB: [PersonajeDB] = []
    @Published var personajesDBZ: [PersonajeDBZ] = []
    @Published var personajesDBGT: [PersonajeDBGT] = []
    @Published var personajesDBSuper: [PersonajeDBSuper] = []
    @Published var personajesDragones: [PersonajeDragones] = []
    @Published var showAlert = false
    @Published var msg = ""
    @Published var deleteAlert = false
    
    init(network: DataInteractor = Network()) {
        
        self.network = network
        
        Task {
            await getPersonajeDB()
            await getPersonajeDBZ()
            await getPersonajeDBGT()
            await getPersonajeDBSuper()
            await getPersonajeDragones()
        }
    }
    
    
    
    func getPersonajeDB() async {
        do {
            let pers = try await network.getPersonajesDB()
            await MainActor.run {
                personajesDB += pers
                
            }
        } catch {
            await MainActor.run {
                self.msg = "\(error)"
                self.showAlert.toggle()
            }
        }
    }
    func getPersonajeDBZ() async {
        do {
            let pers2 = try await network.getPersonajesDBZ()
            await MainActor.run {
                personajesDBZ += pers2
            }
        } catch {
            await MainActor.run {
                self.msg = "\(error)"
                self.showAlert.toggle()
            }
        }
    }
    func getPersonajeDBGT() async {
        do {
            let pers3 = try await network.getPersonajesDBGT()
            await MainActor.run {
                personajesDBGT += pers3
            }
        } catch {
            await MainActor.run {
                self.msg = "\(error)"
                self.showAlert.toggle()
            }
        }
    }
    func getPersonajeDBSuper() async {
        do {
            let pers4 = try await network.getPersonajesDBSuper()
            await MainActor.run {
                personajesDBSuper += pers4
            }
        } catch {
            await MainActor.run {
                self.msg = "\(error)"
                self.showAlert.toggle()
            }
        }
    }
    func getPersonajeDragones() async {
        do {
            let pers5 = try await network.getPersonajesDragones()
            await MainActor.run {
                personajesDragones += pers5
            }
        } catch {
            await MainActor.run {
                self.msg = "\(error)"
                self.showAlert.toggle()
            }
        }
    }
}
    





