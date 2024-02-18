//
//  LoadingButton.swift
//  SwiftUIAnimation
//
//  Created by Raiden Yamato on 18.02.2024.
//

import SwiftUI

struct LoadingButton: View {
    
    @Binding  var processing: Bool
    @Binding  var completed: Bool
    @Binding  var loading: Bool
    
    
    
    
    var body: some View {
        
        ZStack {
            
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: processing ? 250 : 200 , height: 60)
                .foregroundColor(.green)
            
            
            if !processing {
                Text("Submit")
                    .font(.system(.title, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .transition(.move(edge: .top))
            }
            
            if processing && !completed {
                HStack {
                    Circle()
                        .trim(from: 0, to: 0.9)
                        .stroke(Color.white, lineWidth: 3)
                        .frame(width: 30, height: 30)
                        .rotationEffect(.degrees(loading ? 360 : 0))
                        .animation(.easeOut.repeatForever(autoreverses: false), value: loading)
                    
                    Text("Processing")
                        .font(.system(.title, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                }
                .transition(.opacity)
                .onAppear {
                    startProcessing()
                }
            }

        }
        .onTapGesture {
            if !loading {
                processing.toggle()
            }
        }
    
        
        
    }
    
    
    private func startProcessing() {
        self.loading = true
     DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.completed = true
        }
    }
    
    
    
}


struct LoadingButton_Previews: PreviewProvider {
    static var previews: some View {
        LoadingButton(processing: .constant(false), completed: .constant(false), loading: .constant(false))
    }
}
