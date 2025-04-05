//
//  SpotifyMode.swift
//  SpotifyApp
//
//  Created by Peyman on 3/26/25.
//

import SwiftUI

struct SpotifyMode: View {
    @Binding var isGetStart:Bool
  
    var body: some View {
        NavigationStack{
            ZStack{
                Image("modeBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image("spotify")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 196, height: 59)
                    
                    Spacer()
                    
                }
                
                VStack{
                    Spacer()
                    Text("Choose Mode")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        .padding(50)
                  
                    VStack{
                        HStack{
                            Spacer()
                            VStack{
                                ZStack{
                                    Circle()
                                         .fill(Color("prigray"))
                                         .frame(width: 73, height: 73)
                                         .shadow(radius: 10)
                                    Image("Moon")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:36, height: 36)
                                }
                                Text("dark mode")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17))
                            }
                            Spacer()
                            VStack{
                                ZStack{
                                    Circle()
                                        .fill(Color("prigray"))
                                        .frame(width: 73, height: 73)
                                        .shadow(radius: 10)
                                    
                                    Image("Sun")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:36, height: 36)
                                }
                                Text("light mode")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17))
                            }
      
                            Spacer()

                        }
                        .padding(.bottom,60)
                    }
                    VStack{
                        NavigationLink(destination: SpotifyLoginView()){
                                    Text("Continue")
                                        .font(.title2)
                                        .frame(width: 329, height: 92)
                                        .foregroundColor(.white)
                                        .background(Color("ButtonColor"))
                                        .cornerRadius(25)

                        }
                        
                      
                      
                    }
                    .padding(.bottom,40)
                }
            }
        }
       
    }
}

#Preview {
    SpotifyMode(isGetStart: .constant(true))
}
