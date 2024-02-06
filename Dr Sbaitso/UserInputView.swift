//
//  UserInputView.swift
//  Dr Sbaitso
//
//  Created by Mark Strijdom on 05/02/2024.
//


import AVFoundation
import SwiftUI

struct UserInputView: View {
    @State private var userInput = ""
    @State private var response = ""
    @State private var inputHistory = [String]()
    @State private var synthesizer = AVSpeechSynthesizer()
    @State private var showingUserInputScreen = false
    @State private var cursorOpacity = 1.0
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color(red: 0.0, green: 0.0, blue: 1.0))
            
            VStack(alignment: .leading) {
                ForEach(inputHistory, id: \.self) { input in
                    Text(input)
                }
                
                HStack {
                    HStack {
                        Text(">")
                        Text("_")
                            .padding(.bottom, 5)
                            .opacity(cursorOpacity)
                            .onAppear {
                                let baseAnimation = Animation.easeInOut(duration: 0.5)
                                let repeated = baseAnimation.repeatForever(autoreverses: true)
                                
                                withAnimation(repeated) {
                                    cursorOpacity = 0.0
                                }
                            }
                    }
                    
                    Text(userInput)
                }
                
                Text(response)
                
                Button("respond") {
                    // show alert with textfield
                    showingUserInputScreen.toggle()
                    // add user input to inputHistory
                    if userInput != "" {
                        inputHistory.append(userInput)
                        inputHistory.append(response)
                    }
                    // reset userInput to blank
                    userInput = ""
                    response = ""
                }
                .padding()
                .border(.white, width: 2)
                .padding()
            }
            .foregroundStyle(.white)
            .font(.custom("Flexi_IBM_VGA_True", size: 16))
            .padding()
        }
        .alert("", isPresented: $showingUserInputScreen) {
            TextField("enter your thoughts", text: $userInput)
            Button("OK") {
                response = respondTo(userInput)
                sayLine(text: response)
            }
        }
        .font(.custom("Flexi_IBM_VGA_True", size: 16))
    }
    
    func sayLine(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Zarvox")
        synthesizer.speak(utterance)
    }
    
    func respondTo(_ text: String) -> String {
        return "I AM SORRY TO HEAR THAT."
    }
}

#Preview {
    UserInputView()
}
