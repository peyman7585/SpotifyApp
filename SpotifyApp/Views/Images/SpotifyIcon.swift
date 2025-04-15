//
//  SpotifyIcon.swift
//  SpotifyApp
//
//  Created by Peyman on 4/5/25.
//

import SwiftUI

struct SpotifyIcon: View {
    var width: CGFloat = 196
    var height: CGFloat = 59
    
    var body: some View {
        VStack{
            Image("spotify")
                .resizable()
                .scaledToFit()
                .frame(width: width, height: height)
            
            Spacer()
            
        }    }
}

#Preview {
    SpotifyIcon()
}
