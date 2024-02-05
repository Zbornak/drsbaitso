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
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color(red: 0.0, green: 0.0, blue: 1.0))
            
            VStack(alignment: .leading) {
                ForEach(inputHistory, id: \.self) { input in
                    Text(input)
                }
                
                HStack {
                    Text(">_")
                        .padding(.bottom, 5)
                    Text(userInput)
                }
                
                Text("{{ DOCTOR SBAITSO'S RESPONSE }}")
                
                Button("Respond") {
                    // show alert with textfield
                    showingUserInputScreen.toggle()
                    // add user input to inputHistory
                    inputHistory.append(userInput)
                    // reset userInput to blank
                    userInput = ""
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
            TextField("TELL ME YOUR THOUGHTS", text: $userInput)
        }
    }
    
    func sayLine(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.speech.synthesis.voice.Zarvox")
        synthesizer.speak(utterance)
    }
}

#Preview {
    UserInputView()
}
