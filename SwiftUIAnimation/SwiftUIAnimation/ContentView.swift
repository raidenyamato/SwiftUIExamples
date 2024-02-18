//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by Raiden Yamato on 16.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var redCircleColorChanged = false
    @State private var redHeartColorChanged = false
    @State private var redHeartSizeChanged = false
    
    @State private var greenCircleColorChanged = false
    @State private var greenHeartColorChanged = false
    @State private var greenHeartSizeChanged = false
    
    @State private var isLoading = false
    
    @State private var progress: CGFloat = 0.0
    
    @State private var recordBegin = false
    @State private var recording = false
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 30) {
                ///1
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(redCircleColorChanged ? Color(.systemGray5) : .red)
                    
                    Image(systemName: "heart.fill")
                        .foregroundColor(redHeartColorChanged ? .red : .white)
                        .font(.system(size: 100))
                        .scaleEffect(redHeartSizeChanged ? 1.0 : 0.5)
                }
                // implicit animation
                .animation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3), value: redCircleColorChanged)
                .onTapGesture {
                    
                    redCircleColorChanged.toggle()
                    redHeartColorChanged.toggle()
                    redHeartSizeChanged.toggle()
                    
                }
                //// 2
                ZStack {
                    Circle()
                        .frame(width: 200, height: 200)
                        .foregroundColor(greenCircleColorChanged ? Color(.systemGray) : .green)
                    
                    Image(systemName: "heart.fill")
                        .foregroundColor(greenHeartColorChanged ? .green : .white)
                        .font(.system(size: 100))
                        .scaleEffect(greenHeartSizeChanged ? 1.0 : 0.5)
                }
                .onTapGesture {
                    // explicit animation
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)) {
                        greenCircleColorChanged.toggle()
                        greenHeartColorChanged.toggle()
                        greenHeartSizeChanged.toggle()
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
                    
                    //  .animation(.default.repeatForever(autoreverses: false), value: isLoading)
                        .animation(
                            .linear(duration: 4)
                            .repeatForever(autoreverses: false), value: isLoading)
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
                
                
                
                ZStack {
                    Text("\(Int(progress * 100))%")
                        .font(.system(.title, design: .rounded))
                        .bold()
                    
                    Circle()
                        .stroke(Color(.systemGray5), lineWidth: 10)
                        .frame(width: 150, height: 150)
                    
                    Circle()
                        .trim(from: 0, to: progress)
                        .stroke(Color.green, lineWidth: 10)
                        .frame(width: 150, height: 150)
                        .rotationEffect(Angle(degrees: -90))
                }
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true) { timer in
                        self.progress += 0.05
                        print(self.progress)
                        if self.progress >= 1.0 {
                            timer.invalidate()
                        }
                    }
                }
                
                
                HStack {
                    ForEach(0...4, id: \.self) { index in
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.green)
                            .scaleEffect(self.isLoading ? 0 : 1)
                            .animation(.linear(duration: 0.6).repeatForever().delay(0.2 * Double(index)), value: isLoading)
                    }
                    
                    
                }
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: recordBegin ? 30 : 5)
                        .frame(width: recordBegin ? 60 : 230, height: 60)
                        .foregroundColor(recordBegin ? .red : .green)
                        .overlay {
                            Image(systemName: "mic.fill")
                                .font(.system(.title))
                                .foregroundColor(.white)
                                .scaleEffect(recording ? 0.7 : 1)
                                .animation(Animation.spring().repeatForever().delay(0.5), value: recording)
                            
                        }
                    
                    RoundedRectangle(cornerRadius: recordBegin ? 35 : 10)
                        .trim(from: 0, to: recordBegin ? 0.0001 : 1)
                        .stroke(lineWidth: 5)
                        .frame(width: recording ? 70 : 240, height: 70)
                        .foregroundColor(.green)
                }
                .onTapGesture {
                    withAnimation(.spring()) {
                        self.recordBegin.toggle()
                    }
                    
                   
                        self.recording.toggle()
                   
                    
                }
                
                
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
