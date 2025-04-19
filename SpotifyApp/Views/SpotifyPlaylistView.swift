//
//  SpotifyPlaylistView.swift
//  SpotifyApp
//
//  Created by Peyman on 4/19/25.
//

import SwiftUI

struct SpotifyPlaylistView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    ZStack{
                      
                            Image("Rectangle 15")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 390, height: 240)
                            SpotifyHeaderBT(text: "")
                            .padding(.top,-55)
                        
                        
                    }
                    .padding(.top, -95)
                    
                    VStack{
                        Text("Billie Eilish")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color("priFont3"))
                        Text(" 2 album , 67 track")
                            .font(.system(size: 13, weight: .bold, design: .default))
                            .foregroundColor(Color("priFont"))
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Turpis adipiscing vestibulum orci enim, nascetur vitae ")
                            .font(.system(size: 13, weight: .bold, design: .default))
                            .foregroundColor(Color("priFont"))
                            .multilineTextAlignment(.center)
                            .frame(width: 265, height: 48, alignment: .center)
                    }
                    .padding(.top,20)
                    VStack{
                        HStack{
                           
                            Text("Albums")
                                .font(.system(size: 16, weight: .bold, design: .default))
                                .foregroundColor(Color("priFont2"))
                               
                            Spacer()
                        }
                        
                        
                        HStack{
                            VStack{
                                Image("Rectangle 16")
                                    .resizable()
                                    .frame(width: 140,height: 135)
                                    .aspectRatio(contentMode: .fill )
                                   
                                Text("lilbubblegum")
                                    .font(.system(size: 13, weight: .bold, design: .default))
                                    .frame(width: 112, height: 18, alignment: .center)
                                    .foregroundColor(Color("priFont3"))
                                    .padding(.bottom,5)
                                    .padding(.top,15)
                         
                            }
                            .padding(.leading,65)
                            Spacer()
                               
                            VStack{
                                Image("Rectangle 17")
                                    .resizable()
                                    .frame(width: 140,height: 135)
                                    
                                    .aspectRatio(contentMode: .fill )
                                   
                                Text("Happier Than Ever")
                                    .font(.system(size: 13, weight: .bold, design: .default))
                                    .frame(width: 112, height: 18, alignment: .center)
                                    .foregroundColor(Color("priFont3"))
                                    .padding(.bottom,5)
                                    .padding(.top,15)
                       
                            }
                            .padding(.leading,10)
                            Spacer()
                            VStack{
                                Image("Rectangle 20")
                                    .resizable()
                                    .frame(width: 48,height: 135)
                                    
                                    .aspectRatio(contentMode: .fill )
                                   
                                Text("Dont S")
                                    .font(.system(size: 13, weight: .bold, design: .default))
                                    .frame(width: 112, height: 18, alignment: .center)
                                    .foregroundColor(Color("priFont3"))
                                    .padding(.bottom,5)
                                    .padding(.top,15)
                        
                            }
                            .padding(.leading,-20)
                        }
                 
                    }
                    .padding()
                   
                    
                    Spacer()
                    HStack{
                        
                        Text("Songs")
                            .font(.system(size: 16, weight: .bold, design: .default))
                            .foregroundColor(Color("priFont3"))
                            .padding(.leading,17)
                        Spacer()
                     
                        
                    }
                    VStack{
                        HStack(spacing: 20){
                            
                            VStack{
                                ZStack{
                                    Circle()
                                        .fill(Color("priPlay"))
                                        .frame(width: 42,height: 42)
                                                                
                                    Image("Play1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 19,height: 19)
                                        .clipShape(Circle())
                                    
                                }
                               
                            }
                            VStack{
                                Text("Dont Smile At Me")
                                    .font(.system(size: 16, weight: .medium, design: .default))
                                   
                                    .foregroundColor(Color("priFont3"))
                                    
                                Text("Billi Eilish")
                                    .font(.system(size: 12, weight: .medium, design: .default))
                                    .foregroundColor(Color("priFont"))
                                    .multilineTextAlignment(.leading)
                                    .padding(.top, 3)
                                    .padding(.leading,-60)
                            }

                            Spacer()
                            
                            Text("5:33")
                                .padding(.trailing,40)
                                .foregroundColor(Color("priFont"))
                           
                            Image("Heart 1")
                                .resizable()
                                .frame(width: 21,height: 21)
                                
                        }
                        .padding()
                        HStack(spacing: 20){
                            
                            VStack{
                                ZStack{
                                    Circle()
                                        .fill(Color("priPlay"))
                                        .frame(width: 42,height: 42)
                                                                
                                    Image("Play1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 19,height: 19)
                                        .clipShape(Circle())
                                    
                                }
                               
                            }
                            VStack{
                                Text("Lilbubblegum")
                                    .font(.system(size: 16, weight: .medium, design: .default))
                                    .foregroundColor(Color("priFont3"))
                                    
                                Text("Billi Eilish")
                                    .font(.system(size: 12, weight: .medium, design: .default))
                                    .foregroundColor(Color("priFont"))
                                    .padding(.top, 3)
                                    .padding(.leading,-40)
                            }

                            Spacer()
                            
                            Text("3:43")
                                .padding(.trailing,40)
                                .foregroundColor(Color("priFont"))
                           
                            Image("Heart 1")
                                .resizable()
                                .frame(width: 21,height: 21)
                               
                        }
                        .padding()
                        .padding(.top, -15)
                    }
                    VStack{
                        ZStack{
                           
                            Image("Frame 33")
                                .frame(width: 390,height: 73)
                                .background(Color("priTabs"))
                                .padding(.bottom,-50)
                            Image("Rectangle 11")
                                .padding(.leading,90)
                                .padding(.top,-12)
                        }
                      
                    }
                    .padding(.bottom,20)
                    
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
    SpotifyPlaylistView()
}
