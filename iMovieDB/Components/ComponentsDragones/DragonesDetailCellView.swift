//
//  DragonesDetailCellView.swift
//  iMovieDB
//
//  Created by Yery Castro on 25/11/24.
//

import SwiftUI

struct DragonesDetailCellView: View {
    let title: String
    let label: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
                .padding()
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.green.opacity(0.2).gradient)
                        .stroke(Color.black, lineWidth: 2)
                        
                    
                        
                }
            Text(label)
                .font(.headline)
            
        }
        
    }
}

#Preview {
    DragonesDetailCellView(title: "Planeta", label: "Namek")
}
