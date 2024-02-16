//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Raiden Yamato on 16.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var circleColorChanged = false
    @State private var heartColorChanged = false
    @State private var heartSizeChanged = false
    
    @State private var isLoading = false
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 30) {
                ///1
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(circleColorChanged ? Color(.systemGray5) : .red)
                    
                    Image(systemName: "heart.fill")
                        .foregroundColor(heartColorChanged ? .red : .white)
                        .font(.system(size: 100))
                        .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
                }
                // implicit animation
                .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3), value: circleColorChanged)
                .onTapGesture {
                   
                        circleColorChanged.toggle()
                        heartColorChanged.toggle()
                        heartSizeChanged.toggle()
                    
                }
                //// 2
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(circleColorChanged ? Color(.systemGray) : .green)
                    
                    Image(systemName: "heart.fill")
                        .foregroundColor(heartColorChanged ? .green : .white)
                        .font(.system(size: 100))
                        .scaleEffect(heartSizeChanged ? 1.0 : 0.5)
                }
                .onTapGesture {
                    // explicit animation
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)) {
                        circleColorChanged.toggle()
                        heartColorChanged.toggle()
                        heartSizeChanged.toggle()
                    }
                }
                
                
                ZStack {
                    
                    Circle()
                        .stroke(Color(.systemGray5), lineWidth: 14)
                        .frame(width: 100, height: 100)
                        
                    
                    Circle()
                        .trim(from: 0, to: 0.2)
                        .stroke(Color.green, lineWidth: 5)
                        .frame(width: 100, height: 100)
                        .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                       
    //                    .animation(.default.repeatForever(autoreverses: false), value: isLoading)
                        .animation(.linear(duration: 4).repeatForever(autoreverses: false), value: isLoading)
                        .onAppear() {
                            // change to true for animating

                        }
                        
                }
            
                
                
                
                ZStack {
                        
                    Text("Loading")
                        .font(.system(.body, design: .rounded))
                        .bold()
                        .offset(x: 0, y: -25)


                    RoundedRectangle(cornerRadius: 3)
                        .fill(Color(.systemGray5))
                        .frame(width: 250, height: 3)
                    
                    RoundedRectangle(cornerRadius: 3)
                        .fill(Color(.green))
                        .frame(width: 30, height: 3)
                        .offset(x: isLoading ? 110 : -110, y: 0)
                        .animation(.linear(duration: 1)
                            .repeatForever(autoreverses: false),
                                   value: isLoading)
                }
                .padding(.top, 40)
                
                
            }
            .onAppear {
                isLoading = true
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
