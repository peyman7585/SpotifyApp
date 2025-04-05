//
//  SpotifyLoginView.swift
//  SpotifyApp
//
//  Created by Peyman on 4/5/25.
//

import SwiftUI

struct SpotifyLoginView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack{
          
                VStack{
                    HStack{
                        Spacer()
                        Image("Union")
                            .resizable()
                            .frame(width: 150, height: 150)
                         
                    }
                    .ignoresSafeArea()
                    
                    VStack{
                        
                        SpotifyIcon()
                            .padding(.top,20)
                        ZStack{
                         
                            HStack{
                             
                                Image("billie2")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 222, height: 453)
                                    
                                Image("Union2")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 200, height: 390)
//                                    .rotationEffect(.degrees(-60))
//
                              
                                
                            }
                            .ignoresSafeArea()
                            .padding(.top,130)
                            
                        
                                VStack{
                                    Text("Enjoy Listening To Music")
                                        .font(.title)
                                        .foregroundColor(.white)
                                        .padding()
                                    Text("Spotify is a proprietary Swedish audio streaming and media services provider")
                                        .frame(width: 306)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .padding(.bottom,25)
                                    
                                    HStack{
                                        Text("Continue")
                                            .font(.title2)
                                            .frame(width: 147, height: 73)
                                            .foregroundColor(.white)
                                            .background(Color("ButtonColor"))
                                            .cornerRadius(25)
                                        Text("Continue")
                                            .font(.title2)
                                            .frame(width: 147, height: 73)
                                            .foregroundColor(.white)
                                            .background(Color("ButtonColor"))
                                            .cornerRadius(25)
                                    }
                                    Spacer()
                                }
                               

                        }

                    }
                    
                }
             
               
         
            .containerRelativeFrame([.horizontal, .vertical])
            .background(Color("priBlack"))
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
    SpotifyLoginView()
}
