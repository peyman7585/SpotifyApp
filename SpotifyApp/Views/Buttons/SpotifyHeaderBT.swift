//
//  SpotifyHeaderBT.swift
//  SpotifyApp
//
//  Created by Peyman on 4/18/25.
//

import SwiftUI

struct SpotifyHeaderBT: View {
    @State var text: String
    var body: some View {
        HStack{
            Spacer()
            Text(text)
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(Color("priFont3"))
                .padding(.leading ,17)
               
            Spacer()
            Image(systemName: "ellipsis")
                .foregroundColor(Color(.white))
                .rotationEffect(.degrees(-90))
                
               
        }
    }
}

#Preview {
    SpotifyHeaderBT(text: "")
}
