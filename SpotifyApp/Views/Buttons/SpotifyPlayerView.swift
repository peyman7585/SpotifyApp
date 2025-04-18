//
//  SpotifyPlayerView.swift
//  SpotifyApp
//
//  Created by Peyman on 4/18/25.
//

import SwiftUI

struct SpotifyPlayerView: View {
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    HStack{
                        Divider()
                            .frame(width: 146, height: 4)
                            .overlay(Color("priFont3") )
                        Image("Ellipse 6")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 16, height: 16)
                            .padding(.leading,-10)
                            
                    }
                    Text("2:25")
                        .font(.system(size: 14, weight: .bold, design: .default))
                        .foregroundColor(Color("priFont"))
                        .padding(.trailing,130)
                    
                }
               
                VStack{
                    
                    Divider()
                        .frame(width: 166, height: 1)
                        .overlay(Color("priFont") )
                    Text("4:02")
                        .font(.system(size: 14, weight: .bold, design: .default))
                        .foregroundColor(Color("priFont"))
                        .padding(.leading, 120)
                }
                .padding(.leading,-15)
               
            }
           
            HStack{
                Image("Repeate 3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24,height: 24)
                    .padding()
                Image("Previous")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26,height: 26)
                    .padding()
                ZStack{
                    Circle()
                        .fill(Color("ButtonColor"))
                        .frame(width: 72, height: 72)
                    Image("Pause")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 28,height: 28)
                        .padding()
                }
              
                
                Image("Next")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26,height: 26)
                    .padding()
                Image("Shuffle 2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24,height: 24)
                    .padding()
            }
        }
    }
}

#Preview {
    SpotifyPlayerView()
}
