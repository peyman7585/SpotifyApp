//
//  SpotifyMainView.swift
//  SpotifyApp
//
//  Created by Peyman on 4/16/25.
//

import SwiftUI

struct SpotifyMainView: View {
    @Binding var isButtonEnter:Bool
    
    var body: some View {
        NavigationStack{
            ZStack{
                SpotifyIcon(width: 108)
                    .padding(.top, -19)
                VStack{
                 
                    HStack{
                        Image("Search")
                            .padding(.leading,20)
                        Spacer()
                        Image(systemName: "ellipsis")
                            .foregroundColor(Color(.white))
                            .rotationEffect(.degrees(-90))
                            .padding(.trailing,20)
                           
                    }
                    .padding(.bottom,20)
                    
                    Spacer()
                    
                    VStack{
                        Image("Frame")
                            .resizable()
                            .frame(width: 364,height: 118)
                    }
                    .padding(.bottom,20)
                    HStack{
                        VStack{
                            Image("News")
                                .resizable()
                                .frame(width: 51,height: 18)
                                .padding(.leading,30)
                              
                            Image("Rectangle 10")
                                .padding(.leading,30)
                        }
                        Spacer()
                        Image("Video")
                            .resizable()
                            .frame(width: 55,height: 18)
                            .padding(.leading,10)
                        Spacer()
                        Image("Artists")
                            .resizable()
                            .frame(width: 59,height: 18)
                            .padding(.leading,10)
                        Spacer()
                        Image("Podcast")
                            .resizable()
                            .frame(width: 75,height: 18)
                            .padding(.leading,10)
                            
                            
                    }
                    Spacer()
                        HStack{
                            VStack{
                                ZStack{
                                    Image("Rectangle 8")
                                        .resizable()
                                        .frame(width: 148,height: 185)
                                        .padding(.leading,30)
                                        .aspectRatio(contentMode: .fill)
                                    
                                    NavigationLink(destination: SpotifyTrackView()){
                                        ZStack{
                                            Circle()
                                                .fill(Color("priPlay"))
                                                .frame(width: 29,height: 29)
                                            
                                            Image("Play1")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 14,height: 14)
                                                .clipShape(Circle())
                                            
                                        }
                                        .padding(.leading,125)
                                        .padding(.top,180)
                                  }
                                }
                                Text("Bad Guy")
                                    .font(.system(size: 22, weight: .bold, design: .default))
                                    .foregroundColor(Color("priFont3"))
                                    .padding(.bottom,5)
                                Text("Billie Eilish")
                                    .font(.system(size: 19, weight: .bold, design: .default))
                                    .foregroundColor(Color("priFont"))
                            }
                          
                          
                            Spacer()
                            VStack{
                                ZStack{
                                    Image("Rectangle 9")
                                        .resizable()
                                        .frame(width: 148,height: 185)
                                        .padding(.leading,10)
                                        .aspectRatio(contentMode: .fill)
                                    
                                    NavigationLink(destination: SpotifyTrackView()){
                                        ZStack{
                                            Circle()
                                                .fill(Color("priPlay"))
                                                .frame(width: 29,height: 29)
                                            
                                            Image("Play1")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 14,height: 14)
                                                .clipShape(Circle())
                                            
                                        }
                                        .padding(.leading,125)
                                        .padding(.top,180)
                                  }
                                }
                                
                                Text("Scorpion")
                                    .font(.system(size: 22, weight: .bold, design: .default))
                                    .foregroundColor(Color("priFont3"))
                                    .padding(.bottom,5)
                                Text("Drake")
                                    .font(.system(size: 19, weight: .bold, design: .default))
                                    .foregroundColor(Color("priFont"))
                            }
                            
                            Spacer()
                            VStack{
                                Image("Rectangle 19")
                                    .resizable()
                                    .frame(width: 58,height: 185)
                                    .padding(.leading,10)
                                    .aspectRatio(contentMode: .fill )
                                   
                                Text("WH")
                                    .font(.system(size: 22, weight: .bold, design: .default))
                                    .foregroundColor(Color("priFont3"))
                                    .padding(.bottom,5)
                                    .padding(.top,15)
                                Text("Billie")
                                    .font(.system(size: 19, weight: .bold, design: .default))
                                    .foregroundColor(Color("priFont"))
                            }
                         
                        }
                        .padding(.bottom,30)
                
                    HStack{
                        
                        Text("Playlist")
                            .font(.system(size: 23, weight: .bold, design: .default))
                            .foregroundColor(Color("priFont3"))
                            .padding(.leading,35)
                        Spacer()
                        NavigationLink(destination: SpotifyPlaylistView()){
                            Text("See More")
                                .font(.system(size: 16, weight: .bold, design: .default))
                                .foregroundColor(Color("priFont"))
                                .padding(.trailing,35)
                        }
                     
                        
                    }
                    VStack{
                        HStack{
                            
                            VStack{
                                ZStack{
                                    Circle()
                                        .fill(Color("priPlay"))
                                        .frame(width: 37,height: 37)
                                                                
                                    Image("Play1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 17,height: 17)
                                        .clipShape(Circle())
                                    
                                }
                                .padding(.leading,20)
                            }
                            VStack{
                                Text("As It Was")
                                    .font(.system(size: 16, weight: .medium, design: .default))
                                    .foregroundColor(Color("priFont3"))
                                Text("Harry Styles")
                                    .font(.system(size: 12, weight: .medium, design: .default))
                                    .foregroundColor(Color("priFont"))
                            }

                            Spacer()
                            
                            Text("5:33")
                                .padding(.trailing,40)
                                .foregroundColor(Color("priFont"))
                           
                            Image("Heart 1")
                                .resizable()
                                .frame(width: 21,height: 21)
                                .padding(.trailing,35)
                        }
                        .padding()
                        HStack{
                            
                            VStack{
                                ZStack{
                                    Circle()
                                        .fill(Color("priPlay"))
                                        .frame(width: 37,height: 37)
                                                                
                                    Image("Play1")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 17,height: 17)
                                        .clipShape(Circle())
                                    
                                }
                                .padding(.leading,20)
                            }
                            VStack{
                                Text("God Did")
                                    .font(.system(size: 16, weight: .medium, design: .default))
                                    .foregroundColor(Color("priFont3"))
                                Text("DJ Khaled")
                                    .font(.system(size: 12, weight: .medium, design: .default))
                                    .foregroundColor(Color("priFont"))
                            }

                            Spacer()
                            
                            Text("3:43")
                                .padding(.trailing,40)
                                .foregroundColor(Color("priFont"))
                           
                            Image("Heart 1")
                                .resizable()
                                .frame(width: 21,height: 21)
                                .padding(.trailing,35)
                        }
                        .padding()
                    }
                    VStack{
                        ZStack{
                           
                            Image("Frame 23")
                                .frame(width: 390,height: 73)
                                .background(Color("priTabs"))
                                .padding(.bottom,-50)
                            Image("Rectangle 11")
                                .padding(.leading,-150)
                                .padding(.top,-12)
                        }
                      
                    }
                }
            }
            .padding()
            .containerRelativeFrame([.horizontal, .vertical])
            .background(Color("priBackground"))
        }

    }
}

#Preview {
    SpotifyMainView(isButtonEnter: .constant(true))
}
