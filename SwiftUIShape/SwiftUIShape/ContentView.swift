//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by Raiden Yamato on 13.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 207/255, green: 150/255, blue: 207/255), Color(red: 107/255, green: 116/255, blue: 179/255)]), startPoint: .trailing, endPoint: .leading)
    
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
                        .offset(x: 90, y: 1425)
                    
                }
            }
            
            Text("8")
                .foregroundColor(.black)
                .offset(x: -145, y: 1600)
            
            Path { path in
                path.move(to: CGPoint(x: 40, y: 1600))
                path.addQuadCurve(to: CGPoint(x: 350, y: 1600), control: CGPoint(x: 195, y: 1550))
                path.addRect(CGRect(x: 40, y: 1600, width: 310, height: 100))
            }
            .fill(Color(red: 245/255, green: 12/255, blue: 23/255))
            
            
            
            Group {
                Button {
                    // Action
                } label: {
                    Text("Text242")
                        .font(.system(.title , design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 250, height: 50)
                        .background(Dome().fill(Color.orange))
                }
                .offset(y: 1750)
                
              
                
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 200, height: 200)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 80, height: 80)
                            .foregroundColor(.cyan)
                    }
                    .frame(height: 2000)
                    .offset(y: 900)
                
                
                ZStack {
                    Circle()
                        .stroke(Color(.systemGray6), lineWidth: 20)
                        .frame(width: 300, height: 300)
                    
                    Circle()
                        .trim(from: 0, to: 0.85)
                        .stroke(purpleGradient, lineWidth: 20)
                        .frame(width: 300, height: 300)
                    
                        .overlay {
                            VStack {
                                Text("86%")
                                    .font(.system(size: 80, weight: .bold, design: .rounded))
                                    .foregroundColor(.gray)
                                Text("Complete")
                                    .font(.system(.body, design: .rounded))
                                    .bold()
                                    .foregroundColor(.gray)
                            }
                        }
                }
                .padding(.top)
                
                ZStack {
                    Circle()
                        .trim(from: 0, to: 0.4)
                        .stroke(Color(.systemBlue), lineWidth: 80)
                    
                    Circle()
                        .trim(from: 0.4, to: 0.6)
                        .stroke(Color(.systemTeal), lineWidth: 13)

                    Circle()
                        .trim(from: 0.6, to: 0.75)
                        .stroke(Color(.systemPurple), lineWidth: 30)

                    Circle()
                        .trim(from: 0.75, to: 1)
                        .stroke(Color(.systemYellow), lineWidth: 110)
                        .overlay {
                            Text("25%")
                                .font(.system(.title, design: .rounded))
                                .bold()
                                .foregroundColor(.white)
                                .offset(x: 80, y: -100)
                        }
                }
                .frame(width: 250, height: 250)
                .padding(.top, 100)
                
                
            }
           
            
            
        }
           
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



