//
//  SpotifyRegister.swift
//  SpotifyApp
//
//  Created by Peyman on 4/15/25.
//

import SwiftUI

struct SpotifyRegister: View {
    @Environment(\.dismiss) var dismiss
    @State private var placeholder = ""
    @State var text: String
    @State var isButtonEnter = false
    var body: some View {
        NavigationStack {
            
            ZStack{
                VStack{
                    SpotifyIcon(width: 108,height: 33)
                        .padding(.top,-55)
                    
                    VStack{
                        Text("Register")
                            .font(.system(size: 30, weight: .bold, design: .default))
                            .foregroundColor(Color("priFont3"))
                            .padding()
                        HStack{
                            
                            Text("If You Need Any Support")
                                .font(.system(size: 12, weight: .bold, design: .default))
                                .foregroundColor(Color("priFont2"))
                                .padding(.trailing, -5)
                            Text("Click here")
                                .font(.system(size: 12, weight: .bold, design: .default))
                                .foregroundColor(Color("ButtonColor"))
                                
                        }
                        .padding(.bottom,20)
                       
                        SPInputView(text: text, placeholder: "Full Name")
                        
                        SPInputView(text: text, placeholder: "Enter Email")
                            .padding()
                        SPInputPassView(text: text, placeholder: "Password")
           
                        
                            .padding(.bottom,10)
                        
                        Button{
                            isButtonEnter = true
                        }label: {
                            SPLorgeBT(text: "Create Account")
                        }
                       
                        
                        HStack{
                            Divider()
                            LinearGradient(colors: [Color("priLinear"),Color("priLinear2")], startPoint: .leading, endPoint: .trailing)
                                .frame(width: 146, height: 1)
                                  
                            Text("Or")
                                .font(.system(size: 14, weight: .bold, design: .default))
                                .foregroundColor(Color("priFont"))
                            
                            Divider()
                                LinearGradient(colors: [Color("priLinear2"),Color("priLinear")], startPoint: .leading, endPoint: .trailing)
                                .frame(width: 146, height: 1)
                                   
                        }
                        .padding(.top,20)
                       
                        
                        HStack{
                            Spacer()
                            Image("Google")
                                .padding(.trailing,25)
                            Image("Apple")
                                .padding(.leading,25)
                            Spacer()
                        }
                        .padding(.top,20)
                        
                    }
                    
                    HStack{
                        Text("Do You Have An Account?")
                            .font(.system(size: 14, weight: .bold, design: .default))
                            .foregroundColor(Color("priFont"))
                            .padding(.trailing, -5)
                        Text("Sign In")
                            .font(.system(size: 14, weight: .bold, design: .default))
                            .foregroundColor(Color("priBlue"))
                    }
                    .padding(.top,30)
                    Spacer()
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
                .fullScreenCover(isPresented: $isButtonEnter) {
                    SpotifyMainView(isButtonEnter: $isButtonEnter)
                }
            }
            
        }
       
    }
}

#Preview {
    SpotifyRegister( text: "")
}
