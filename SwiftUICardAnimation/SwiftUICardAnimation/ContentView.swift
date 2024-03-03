//
//  ContentView.swift
//  SwiftUICardAnimation
//
//  Created by Raiden Yamato on 02.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var currentCardIndex = 0
    
    var body: some View {
        VStack(alignment: .leading, 
               spacing: 0,
               content: {
            Text("Reading List")
                .font(.system(size: 70, 
                              weight: .black,
                              design: .rounded))
                .padding([.top, .horizontal])
            
            if !show {
                cardViews[currentCardIndex]
                    .transition(.slideInAndOut)
            }
            
            if show {
                cardViews[currentCardIndex]
                    .transition(.slideInAndOut)
            }
            Spacer()
        })
        .onTapGesture {
            self.currentCardIndex =
            (self.currentCardIndex + 1) % cardViews.count
            
            
            withAnimation(Animation.spring()) {
                self.show.toggle()
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}


extension AnyTransition {
    static var scaleDownAndUp: AnyTransition {
        AnyTransition.offset(y: 600).combined(with: .scale(scale: 0, anchor: .bottom)).combined(with: .opacity)
    }
    
    static var slideInAndOut: AnyTransition {
        AnyTransition.asymmetric(insertion: 
                                    AnyTransition.offset(x: 800).combined(with: .opacity).combined(with: .scale(scale: 0, anchor: .trailing)),
                                 removal:
                                    AnyTransition.offset(x: -800).combined(with: .opacity).combined(with: .scale(scale: 0, anchor: .leading))
        )}
    
}
