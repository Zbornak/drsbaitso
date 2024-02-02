//
//  ChatView.swift
//  Dr Sbaitso
//
//  Created by Mark Strijdom on 02/02/2024.
//

import SwiftUI

struct ChatView: View {
    @State private var userName = ""
    @State private var userInput = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 0.0, green: 0.0, blue: 1.0))
            
            VStack {
                Text("Please enter your name...")
                TextField("", text: $userName)
                    .padding()
            }
            .foregroundStyle(.white)
            .font(.custom("Flexi_IBM_VGA_True", size: 21))
        }
    }
}

#Preview {
    ChatView()
}
