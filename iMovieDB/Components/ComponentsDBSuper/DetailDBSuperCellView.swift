//
//  DetailDBSuperCellView.swift
//  iMovieDB
//
//  Created by Yery Castro on 24/11/24.
//

import SwiftUI

struct DetailDBSuperCellView: View {
    let title: String
    let label: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .bold()
            .padding(.leading)
            .padding(.top, 20)
        Text(label)
            .font(.headline)
            .padding(.leading)
    }
}

#Preview {
    DetailDBSuperCellView(title: "Planeta", label: "Rey del Todo")
}
