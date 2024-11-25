//
//  DetailCellView.swift
//  iMovieDB
//
//  Created by Yery Castro on 20/11/24.
//

import SwiftUI

struct DetailDBCellView: View {
    let title: String
    let label: String
    var body: some View {
        Text(title)
            .font(.headline)
            .bold()
        Text(label)
    }
}

#Preview {
    DetailDBCellView(title: "Planeta", label: "Tierra")
}
