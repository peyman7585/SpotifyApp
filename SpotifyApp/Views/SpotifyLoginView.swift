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
        NavigationStack{
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
                        
                        SpotifyIcon(width: 235, height: 71)
                         
                            .padding()
                        ZStack{
                            
                            HStack{
                                
                                Image("billie2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 220, height: 453, alignment: .leading)
                                Image("Union2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 180, height: 150, alignment: .topLeading)
                                
                                
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
                                    NavigationLink(destination: SpotifyLoginView()){
                                        ButtonView(text: "Register")
                                    }
                                    NavigationLink(destination: SpotifySignIn()){
                                        Text("Sign in")
                                            .font(.title2)
                                            .frame(width: 147, height: 73)
                                            .foregroundColor(.white)
                                            .cornerRadius(25)
                                    }
                                    
                                   
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
}

#Preview {
    SpotifyLoginView()
}

struct ButtonView: View {
    var text: String = ""
    var body: some View {
        Text(text)
            .font(.title2)
            .frame(width: 147, height: 73)
            .foregroundColor(.white)
            .background(Color("ButtonColor"))
            .cornerRadius(25)
    }
}
