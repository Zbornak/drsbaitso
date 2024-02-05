//
//  NameView.swift
//  Dr Sbaitso
//
//  Created by Mark Strijdom on 02/02/2024.
//

import SwiftUI

struct NameView: View {
    @State private var userName = ""
    @State private var showingLine1 = false
    @State private var showingLine2 = false
    @State private var showingLine3 = false
    @State private var showingLine4 = false
    @State private var showingLine5 = false
    @State private var showingButton = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 0.0, green: 0.0, blue: 1.0))
            
            VStack(alignment: .leading) {
                Text("Please enter your name...")
                HStack {
                    TextField("", text: $userName)
                        .padding()
                        .border(.white, width: 2)
                        .padding()
                    Button("ok") {
                        withAnimation {
                            showingLine1 = true
                        } completion: {
                            withAnimation(Animation.default.delay(3)) {
                                showingLine2 = true
                            } completion: {
                                withAnimation(Animation.default.delay(3)) {
                                    showingLine3 = true
                                } completion: {
                                    withAnimation(Animation.default.delay(3)) {
                                        showingLine4 = true
                                    } completion: {
                                        withAnimation(Animation.default.delay(3)) {
                                            showingLine5 = true
                                        } completion: {
                                            withAnimation(Animation.default.delay(3)) {
                                                showingButton = true
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
        
                Text("HELLO \(userName == "" ? "ANON" : userName.uppercased()), MY NAME IS DOCTOR SBAITSO.").opacity(showingLine1 ? 1: 0)
                Text("")
                Text("SAY WHATEVER IS IN YOUR MIND FREELY,").opacity(showingLine2 ? 1 : 0)
                Text("OUR CONVERSATION WILL BE KEPT IN STRICT CONFIDENCE.").opacity(showingLine3 ? 1 : 0)
                Text("MEMORY CONTENTS WILL BE WIPED OFF AFTER YOU LEAVE,").opacity(showingLine4 ? 1 : 0)
                Text("")
                Text("SO, TELL ME ABOUT YOUR PROBLEMS.").opacity(showingLine5 ? 1 : 0)
                Text("")
                Button(">_ CLICK HERE") {
                    //show InputView
                }.opacity(showingButton ? 1 : 0)
            }
            .foregroundStyle(.white)
            .font(.custom("Flexi_IBM_VGA_True", size: 16))
            .padding()
        }
    }
}

#Preview {
    NameView()
}
