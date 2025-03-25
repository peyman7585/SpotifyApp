//
//  ContentView.swift
//  SpotifyApp
//
//  Created by Peyman on 3/24/25.
//

import SwiftUI

struct SpotifyView: View {
    @State var isGetStart = false
    
    var body: some View {
            ZStack{
                Image("billi-pic")
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
                    VStack{
                        Text("Enjoy Listening To Music")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.")
                            .frame(width: 297)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom,25)
                            
                    }
                    VStack{
                        Button{
                            isGetStart = true
                        }label: {
                            
                                Text("Get Started")
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
            .fullScreenCover(isPresented: $isGetStart) {
                SpotifyMode(isGetStart: $isGetStart)
            }
                
            }
    
}

#Preview {
    SpotifyView()
}
