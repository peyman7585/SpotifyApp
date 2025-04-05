//
//  SpotifyIcon.swift
//  SpotifyApp
//
//  Created by Peyman on 4/5/25.
//

import SwiftUI

struct SpotifyIcon: View {
    var body: some View {
        VStack{
            Image("spotify")
                .resizable()
                .scaledToFit()
                .frame(width: 196, height: 59)
            
            Spacer()
            
        }    }
}

#Preview {
    SpotifyIcon()
}
