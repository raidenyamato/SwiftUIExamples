//
//  ContentView.swift
//  SwiftUIState
//
//  Created by Raiden Yamato on 12.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying = true
    @State private var blueCounter = 0
    @State private var greenCounter = 0
    @State private var redCounter = 0
   
    
    
    var body: some View {
        
        
        ScrollView {
            VStack {
                Button {
                    // Switch between the play and stop button
                    isPlaying.toggle()
                } label: {
                    Image(systemName: isPlaying ? "play.circle.fill" : "stop.circle.fill")
                        .font(.system(size: 150))
                        .foregroundColor(isPlaying ? .green : .red)
            }
                
                    Text("\(blueCounter + greenCounter + redCounter)")
                    .font(.system(size: 200, weight: .bold
                                  , design: .rounded))
               
                
                HStack {
                    CounterButton(counter: $blueCounter, color: .blue)
                    CounterButton(counter: $greenCounter, color: .green)
                    CounterButton(counter: $redCounter, color: .red)
                }
                
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
