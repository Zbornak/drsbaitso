//
//  NameView.swift
//  Dr Sbaitso
//
//  Created by Mark Strijdom on 02/02/2024.
//

import SwiftUI

struct NameView: View {
    @State private var userName = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 0.0, green: 0.0, blue: 1.0))
            
            VStack(alignment: .leading) {
                Text("Please enter your name...")
                TextField("", text: $userName)
                    .padding()
                    .border(.white, width: 2)
                    .padding()
                
                Text("HELLO \(userName.uppercased()), MY NAME IS DOCTOR SBAITSO.")
                Text("")
                Text("SAY WHATEVER IS IN YOUR MIND FREELY,")
                Text("OUR CONVERSATION WILL BE KEPT IN STRICT CONFIDENCE.")
                Text("MEMORY CONTENTS WILL BE WIPED OFF AFTER YOU LEAVE,")
                Text("")
                Text("SO, TELL ME ABOUT YOUR PROBLEMS.")
                Text("")
                Text(">_")
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
