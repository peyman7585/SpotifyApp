//
//  SpotifyLyricsView.swift
//  SpotifyApp
//
//  Created by Peyman on 4/18/25.
//

import SwiftUI

struct SpotifyLyricsView: View {
    @Environment(\.dismiss) var dismiss
    let Verse1 = [
        "Sleepin', you're on your tippy toes",
        "Creepin' around like no one knows",
        "Think you're so criminal",
        "Bruises on both my knees for you",
        "Don't say thank you or please",
        "I do what I want when I'm wanting ",
        "to",
        
    ]
    let Verse2 = [
        "Sleepin', you're on your tippy toes",
        "Creepin' around like no one knows",
        "Think you're so criminal",
        "Bruises on both my knees for you",

    ]
  

    var body: some View {
        NavigationStack{
            VStack{
                
                ZStack{
                    Image("Rectangle 8")
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(1.4)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    VStack{
                        HStack{
                            Spacer()
                            Text("Bad Guy")
                                .font(.system(size: 27, weight: .bold, design: .default))
                                .foregroundColor(Color("priFont3"))
                               
                               
                            Spacer()
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.white))
                                .rotationEffect(.degrees(-90))
                                .padding(.trailing,30)
                                
                               
                        }
                        .padding(.bottom,30)

                        VStack(alignment: .leading, spacing: 12) {
                            Text(" ( Verse 1 )")
                                .foregroundColor(.white)
                                .padding(.leading,-20)
                            ForEach(Verse1.indices, id: \.self) { index in
                                Text(Verse1[index])
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight:.regular))
                                    .opacity( 0.5)
                                   
                            }
                            Image("Play2")
                                .padding(.leading,-20)
                            Text("My soul? So cynical")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight:.bold))
                                .opacity(1)
                            Text(" ( Verse 2 )")
                                .foregroundColor(.white)
                                .padding(.leading,-20)
                            ForEach(Verse2.indices, id: \.self) { index in
                                Text(Verse2[index])
                                    .foregroundColor(.gray)
                                    .font(.system(size: 16, weight: .regular))
                                    .opacity(0.5)
                            }
                        }
                        .padding()
                      }
                    
                   }
              
                VStack{
                    HStack{
                        HStack{
                            Image("Rectangle 8")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 42, height: 42)
                                .clipShape(Circle())
                            VStack{
                                
                                Text("Bad Guy")
                                    .font(.system(size: 16, weight: .bold, design: .default))
                                    .foregroundColor(Color("priFont3"))
                                    .padding(.bottom,5)
                                    
                                Text("Billi Eilish")
                                    .font(.system(size: 12, weight: .bold, design: .default))
                                    .foregroundColor(Color("priFont"))
                                    .padding(.leading,7)
                                    
                            }
                        }
                        .padding(.leading,30)
                      
                        Spacer()
                        
                        Image("Heart 2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24,height: 24)
                            .padding(.trailing,30)
                    }
                    .padding()
                    
                    SpotifyPlayerView()
                       
                        .padding(.bottom,50)
                }
                .background(Color("priBackground"))
                }
            
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
    SpotifyLyricsView()
}
