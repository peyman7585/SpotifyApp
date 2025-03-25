//
//  LoadingView.swift
//  SpotifyApp
//
//  Created by Peyman on 3/24/25.
//

import SwiftUI

struct LoadingView: View {
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            SpotifyView()
        }else{
            ZStack {
                Image("spotify")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 196, height: 59)
                    
            }
            .containerRelativeFrame([.horizontal, .vertical])
            .background(.black)
            .onAppear {
                          DispatchQueue.main.asyncAfter(deadline: .now() + 3 ) {
                              isActive = true
                          }
                      }
        }
    
    }
}

#Preview {
    LoadingView()
}
