//
//  URL.swift
//  MangasLibrary
//
//  Created by Yery Castro on 19/3/24.
//

import SwiftUI

let url = URL(string: "https://www.dragonballapi.com")!

extension URL {
    static let urlDB = url.appending(path: "/dragonball")
    static let urlDBZ = url.appending(path: "/dragonballz")
    static let urlDBGT = url.appending(path: "/dragonballgt")
    static let urlDBSuper = url.appending(path: "/dragonballsuper")
    static let urlDBDragones = url.appending(path: "/dragons")
    
}
