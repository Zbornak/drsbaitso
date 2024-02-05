//
//  UserInputView.swift
//  Dr Sbaitso
//
//  Created by Mark Strijdom on 05/02/2024.
//

import SwiftUI

struct UserInputView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(red: 1.0, green: 0.0, blue: 0.0))
            Text("User Input")
        }
    }
}

#Preview {
    UserInputView()
}
