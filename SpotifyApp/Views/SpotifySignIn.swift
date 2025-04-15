//
//  SpotifySignIn.swift
//  SpotifyApp
//
//  Created by Peyman on 4/14/25.
//

import SwiftUI

struct SpotifySignIn: View {
    @Environment(\.dismiss) var dismiss
    @State private var placeholder = ""
    var body: some View {
        NavigationStack {
            
            ZStack{
                VStack{
                    SpotifyIcon(width: 108,height: 33)
                        .padding(.top,-36)
                    
                    VStack{
                        Text("Sign In")
                            .font(.system(size: 24, weight: .bold, design: .default))
                            .foregroundColor(.white)
                        
                        Text("create")
                        
                       
                        TextField("Enter your name", text: $placeholder)
                        
                            .foregroundColor(.blue)
                            .frame(width: 334,height: 80)
                            .border(Color.blue, width: 1)
                            .multilineTextAlignment(.center)
                                  .cornerRadius(30)
                        
                               
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
    SpotifySignIn()
}
