//
//  SpotifyTrackView.swift
//  SpotifyApp
//
//  Created by Peyman on 4/18/25.
//

import SwiftUI

struct SpotifyTrackView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    SpotifyHeaderBT()
                    .padding(.bottom,25)
                    
                    VStack{
                        Image("Rectangle 8")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 345,height: 370)
                    
                    }
                    .padding()
                    HStack{
                        VStack{
                            Text("Bad Guy")
                                .font(.system(size: 22, weight: .bold, design: .default))
                                .foregroundColor(Color("priFont3"))
                                .padding(.bottom,5)
                                
                            Text("Billi Eilish")
                                .font(.system(size: 22, weight: .bold, design: .default))
                                .foregroundColor(Color("priFont"))
                                .padding(.leading,7)
                                
                        }
                        Spacer()
                        
                        Image("Heart 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24,height: 24)
                    }
                    .padding(20)
                    .padding(.bottom,20)
                    
                    SpotifyPlayerView()
                    VStack{
                        NavigationLink(destination: SpotifyLyricsView()){
                            Image("Left2")
                                .foregroundColor(.blue)
                                .imageScale(.large)
                                .rotationEffect(.degrees(90))
                        
                        }
                        Text("Lyrics")
                            .font(.system(size: 14, weight: .bold, design: .default))
                            .foregroundColor(Color("priFont"))
                            .padding(.bottom,5)
                    }
                    .padding()
                }
            }
            .padding()
            .containerRelativeFrame([.horizontal, .vertical])
            .background(Color("priBackground"))
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        ZStack{
                            Circle()
                                .fill(Color("prigray"))
                                .frame(width: 24, height: 24)
                                .shadow(radius: 10)
                            Image("Left2")
                                .foregroundColor(.blue)
                                .imageScale(.large)
                        }
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    SpotifyTrackView()
}
