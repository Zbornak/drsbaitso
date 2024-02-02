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
                    Text("D R  S B A I T S O").foregroundColor(.yellow).padding()
                    Text("version 27.30").padding()
                }
                
                HStack {
                    Text("(c) Copyright Creative Labs, Inc. 2024,").foregroundColor(.green).padding()
                    Text("all rights reserved").padding(.trailing)
                        
                }
                .border(.white, width: 2)
            }
            .border(.white, width: 2)
            .foregroundStyle(.white)
            .font(.custom("Flexi_IBM_VGA_True", size: 13))
            
            VStack {
                NameView()
                    .frame(maxWidth: .infinity)
            }
            .padding(.top, 100)
        }
    }
}

#Preview {
    ContentView()
}
