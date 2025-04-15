//
//  SPLorgeBT.swift
//  SpotifyApp
//
//  Created by Peyman on 4/14/25.
//

import SwiftUI

struct SPLorgeBT: View {
    var text: String = ""
 
    var body: some View {
        
        Text(text)
            .font(.title2)
            .frame(width: 329, height: 92)
            .foregroundColor(.white)
            .background(Color("ButtonColor"))
            .cornerRadius(25)
    }
}

#Preview {
    SPLorgeBT()
}
