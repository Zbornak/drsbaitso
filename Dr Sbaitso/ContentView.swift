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
        ZStack {
            Rectangle()
                .fill(Color(red: 0.0, green: 0.0, blue: 1.0))
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Sound Blaster")
                    Text("D R  S B A I T S O")
                    Text("version 27.30")
                }
                Text("(c) Copyright Creative Kabs, Inc. 2024, all rights reserved")
            }
            .foregroundStyle(.white)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
