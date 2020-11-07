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
            .background(LinearGradient(gradient: Gradient(colors: [Color("Dark"), Color("Light")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40.0)
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
                .font(Font.system(size:18, design: .monospaced))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(12.0)
            
            Button(action: {
                self.counter += 1
            }) {
                    
                    Text("􀅼") //add "plus" button
                        .font(.title)
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
                    Text("􀅽") //add "remove: button
                        .font(.title)
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
                    Text("􀎀") //add reset button
                        .font(.system(size: 19))
                        .frame(maxWidth: 50, maxHeight: 40)
                        .padding(.vertical, 1.0)
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(lineWidth: 0.0)
                        .shadow(color: .blue, radius: 10.0))
            }
            .buttonStyle(BlueButtonStyle())
            
            Button(action: {
                            NSApplication.shared.terminate(self)
                        })
                        {
                            Text("􀆄")
                            .font(.caption)
                            .fontWeight(.semibold)
                        }
                        .padding(.trailing, 8.0)
                        .frame(width: 180.0, alignment: .trailing)
        
            Spacer()
            Text("menubarCounter v0.0.2 Early Bird")
                .font(.system(size: 11))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
