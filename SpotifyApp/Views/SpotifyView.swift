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
                    SpotifyIcon()
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
                            SPLorgeBT(text: "Get Started")
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
