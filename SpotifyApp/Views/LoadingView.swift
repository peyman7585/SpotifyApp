//
//  LoadingView.swift
//  SpotifyApp
//
//  Created by Peyman on 3/24/25.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            Image("spotify")
                .resizable()
                .scaledToFit()
                .frame(width: 196, height: 59)
                
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(.black)
        
    }
}

#Preview {
    LoadingView()
}
