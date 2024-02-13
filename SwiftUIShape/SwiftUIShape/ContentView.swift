//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by Raiden Yamato on 13.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        ScrollView() {
            
            Path { path in
                path.move(to: CGPoint(x: 70, y: 20))
                path.addLine(to: CGPoint(x: 350, y: 20  ))
                path.addLine(to: CGPoint(x: 350, y: 200))
                path.addLine(to: CGPoint(x: 70, y: 200))
            }
            .fill(.green)
            
            
            Path() { path in
                path.move(to: CGPoint(x: 70, y: 250))
                path.addLine(to: CGPoint(x:350, y: 250))
                path.addLine(to: CGPoint(x: 350, y: 450))
                path.addLine(to: CGPoint(x: 70, y: 450))
                path.closeSubpath()
            }
            .stroke(.green, lineWidth: 10)
            
            Path() { path in
                path.move(to: CGPoint(x: 70, y: 550))
                path.addLine(to: CGPoint(x: 90, y: 550))
                path.addQuadCurve(to: CGPoint(x: 330, y: 550),
                                  control: CGPoint(x: 210, y: 500))
                path.addLine(to: CGPoint(x:350, y: 550))
                path.addLine(to: CGPoint(x: 350, y: 650))
                path.addLine(to: CGPoint(x: 70, y: 650))
            }
            .fill(Color.purple)
            
            Text("4")
                .foregroundColor(.black)
                .offset(x: -145, y: 750)
            
            // 4
            ZStack {
                Path() { path in
                    path.move(to: CGPoint(x: 70, y: 750))
                    path.addLine(to: CGPoint(x: 90, y: 750))
                    path.addQuadCurve(to: CGPoint(x: 330, y: 750),
                                      control: CGPoint(x: 210, y: 700))
                    path.addLine(to: CGPoint(x: 350, y: 750))
                    path.addLine(to: CGPoint(x: 350, y: 850))
                    path.addLine(to: CGPoint(x: 70, y: 850))
                }
                .fill(Color.purple)
                
                Path() { path in
                    path.move(to: CGPoint(x: 70, y: 750))
                    path.addLine(to: CGPoint(x: 90, y: 750))
                    path.addQuadCurve(to: CGPoint(x: 330, y: 750),
                                      control: CGPoint(x: 210, y: 700))
                    path.addLine(to: CGPoint(x: 350, y: 750))
                    path.addLine(to: CGPoint(x: 350, y: 850))
                    path.addLine(to: CGPoint(x: 70, y: 850))
                    path.closeSubpath()
                }
                .stroke(Color.black, lineWidth: 5)
                
            }
            
            Path { path in
                path.move(to: CGPoint(x: 200, y: 1050))
                path.addArc(center: .init(x: 200, y: 1050),
                            radius: 150, startAngle: .degrees(0),
                            endAngle: .degrees(90), clockwise: true)
            }
            
            
            
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 1350) )
                    path.addArc(center: CGPoint(x: 200, y: 1350), radius: 150, startAngle: .degrees(0), endAngle: .degrees(190), clockwise: true)
                }
                .fill(.yellow)
                
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 1350))
                    path.addArc(center: CGPoint(x: 200, y: 1350), radius: 150, startAngle: .degrees(190), endAngle: .degrees(110), clockwise: true)
                }
                .fill(.teal)
                
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 1350))
                    path.addArc(center: CGPoint(x: 200, y: 1350), radius: 150, startAngle: .degrees(110), endAngle: .degrees(90), clockwise: true)
                }
                .fill(.blue)
            
                Path { path in
                    path.move(to: CGPoint(x: 200, y: 1350))
                    path.addArc(center: CGPoint(x: 200, y: 1350), radius: 150, startAngle: .degrees(90), endAngle: .degrees(0), clockwise: true)
                    path.closeSubpath()
                }
                .stroke(Color(red: 54/255, green: 43/255, blue: 44/255), lineWidth: 10)
                
                .offset(x: 20, y: 20)
                .overlay {
                    Text("25%")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.red)
                       .offset(x: 90, y: 680)
                    
                }
            }
            .frame(height: 1500)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
