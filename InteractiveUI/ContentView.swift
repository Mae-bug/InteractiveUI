//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 6/4/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        
        VStack{
            Text(textTitle)
                .font(.title)
                .foregroundColor(Color.black)
                .padding(60)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                if name != "" {
                    print(name)
                    textTitle = "Welcome,  \(name)!"
                }
                else {
                    textTitle = "Please enter a name"
                }
            }
            .padding(20)
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
            .foregroundColor(Color.white)
            .fontWeight(.black)

        }
        .padding()
    }//body end
}//cv end

#Preview {
    ContentView()
}

