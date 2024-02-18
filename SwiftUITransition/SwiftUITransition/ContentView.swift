//
//  ContentView.swift
//  SwiftUITransition
//
//  Created by Raiden Yamato on 18.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var show = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 300)
                .foregroundColor(.green)
                .overlay {
                    Text("Show details")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                }
                            
            if show {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.purple)
                    .overlay {
                        Text("Well, here is the details")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                    }
                    //.transition(.scale(scale: 0, anchor: .bottom))
                   // .transition(.offset(x: -600, y: 0))
                   // .transition(.offseScaleOpacity)

                    .transition(.asymetricScaleAndOffset)
                
                    
                
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 1, dampingFraction: 0.7, blendDuration: 0)) {
                self.show.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
