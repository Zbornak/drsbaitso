//
//  NameView.swift
//  Dr Sbaitso
//
//  Created by Mark Strijdom on 02/02/2024.
//

import AVFoundation
import SwiftUI

struct NameView: View {
    @State private var userName = ""
    @State private var showingLine1 = false
    @State private var showingLine2 = false
    @State private var showingLine3 = false
    @State private var showingLine4 = false
    @State private var showingLine5 = false
    @State private var showingButton = false
    @State private var synthesizer = AVSpeechSynthesizer()
    @Binding var switchToInputView: Bool
    
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
                            sayLine(text: "HELLO \(userName == "" ? "ANON" : userName.uppercased()), MY NAME IS DOCTOR SBAITSO.")
                        } completion: {
                            withAnimation(Animation.default.delay(2.5)) {
                                showingLine2 = true
                                sayLine(text: "SAY WHATEVER IS IN YOUR MIND FREELY,")
                            } completion: {
                                withAnimation(Animation.default.delay(2.5)) {
                                    showingLine3 = true
                                    sayLine(text: "OUR CONVERSATION WILL BE KEPT IN STRICT CONFIDENCE.")
                                } completion: {
                                    withAnimation(Animation.default.delay(2.5)) {
                                        showingLine4 = true
                                        sayLine(text: "MEMORY CONTENTS WILL BE WIPED OFF AFTER YOU LEAVE,")
                                    } completion: {
                                        withAnimation(Animation.default.delay(2.5)) {
                                            showingLine5 = true
                                            sayLine(text: "SO, TELL ME ABOUT YOUR PROBLEMS.")
                                        } completion: {
                                            withAnimation(Animation.default.delay(2.5)) {
                                                showingButton = true
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                    .border(.white, width: 2)
                    .padding()
                }
                
                Text("HELLO \(userName == "" ? "ANON" : userName.uppercased()), MY NAME IS DOCTOR SBAITSO.").opacity(showingLine1 ? 1: 0)
                Text("")
                Text("SAY WHATEVER IS IN YOUR MIND FREELY,").opacity(showingLine2 ? 1 : 0)
                Text("OUR CONVERSATION WILL BE KEPT IN STRICT CONFIDENCE.").opacity(showingLine3 ? 1 : 0)
                Text("MEMORY CONTENTS WILL BE WIPED OFF AFTER YOU LEAVE,").opacity(showingLine4 ? 1 : 0)
                Text("")
                Text("SO, TELL ME ABOUT YOUR PROBLEMS.").opacity(showingLine5 ? 1 : 0)
                Text("")
                Button("CLICK HERE TO CONTINUE") {
                    switchToInputView = true
                }.opacity(showingButton ? 1 : 0)
            }
            .foregroundStyle(.white)
            .font(.custom("Flexi_IBM_VGA_True", size: 16))
            .padding()
        }
    }
    
    func sayLine(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Zarvox")
        synthesizer.speak(utterance)
    }
}

#Preview {
    NameView(switchToInputView: .constant(false))
}
