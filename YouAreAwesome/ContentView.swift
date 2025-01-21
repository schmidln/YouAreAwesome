//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lucas Schmidt on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            Spacer()
            HStack {
                Button("Awesome") {
                    message = "Awesome!"
                }
                Button("Great", action: {
                    message = "Great!"
                })
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
