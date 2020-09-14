//
//  ContentView.swift
//  menubarCounter
//
//  Created by Andrei Volkov on 11.09.2020.
//  Copyright © 2020 Andrei Volkov. All rights reserved.
//

import SwiftUI

//setting a style of button
struct BlueButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color.blue : Color.white)
            .background(configuration.isPressed ? Color.white : Color.blue)
            .cornerRadius(60.0)
            .padding(10.0)
    }
}

struct ContentView: View {
    @State var counter = 0
    
    var body: some View
    {
        VStack {
            Text("Counter: \(self.counter)") //set up counter stroke
                .multilineTextAlignment(.center)
                .font(.system(size:16))
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Button(action: {
                self.counter += 1
            }) {
                    
                    Text("+") //add "plus" button
                        .font(.system(size: 40))
                        .frame(maxWidth: 50, maxHeight: 40)
                .padding(10.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 60.0)
                        .stroke(lineWidth: 0.0)
                        .shadow(color: .blue, radius: 10.0))
            }
            .buttonStyle(BlueButtonStyle())
            
            Button(action: {
                self.counter -= 1
            }) {
                    Text("-") //add "remove: button
                        .font(.system(size:40))
                        .frame(maxWidth: 50, maxHeight: 40)
                .padding(10.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 60.0)
                        .stroke(lineWidth: 0.0)
                        .shadow(color: .blue, radius: 10.0))
            }
            .buttonStyle(BlueButtonStyle())
            
            
            Button(action: {
                self.counter = 0
            }) {
                    Text("⟲") //add reset button
                        .font(.system(size:25))
                        .frame(maxWidth: 50, maxHeight: 40)
                .padding(1.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 60.0)
                        .stroke(lineWidth: 0.0)
                        .shadow(color: .blue, radius: 10.0))
            }
            .buttonStyle(BlueButtonStyle())
            
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
