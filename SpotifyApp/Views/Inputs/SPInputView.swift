//
//  SPInputView.swift
//  SpotifyApp
//
//  Created by Peyman on 4/15/25.
//

import SwiftUI

struct SPInputView: View {
    @State var text: String
    @State var placeholder: String
    var body: some View {
        
        ZStack(alignment: .leading) {
                 if text.isEmpty {
                     Text(placeholder)
                         .foregroundColor(Color("priFont"))
                         .padding(.leading, 20)
                 }
                 TextField("", text: $text)
                     .padding(.leading, 20)
                     .foregroundColor(Color(.systemBackground))
             }
             .frame(width: 334, height: 80)
             .overlay(
                 RoundedRectangle(cornerRadius: 30)
                     .stroke(Color.gray, lineWidth: 1)
             )
             .cornerRadius(30)
    }
}
#Preview {
    SPInputView(text: "", placeholder: "")
}
