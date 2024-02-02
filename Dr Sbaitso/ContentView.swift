//
//  ContentView.swift
//  Dr Sbaitso
//
//  Created by Mark Strijdom on 02/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput = ""
    
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color(red: 0.0, green: 0.0, blue: 1.0))
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Sound Blaster").padding(.leading)
                    Text("D R  S B A I T S O").padding()
                    Text("version 27.30").padding()
                }
                
                HStack {
                    Text("(c) Copyright Creative Labs, Inc. 2024, all rights reserved").padding()
                        .border(.white, width: 2)
                }
                    
            }
            .border(.white, width: 2)
            .foregroundStyle(.white)
            .font(.caption)
        }
    }
}

#Preview {
    ContentView()
}
