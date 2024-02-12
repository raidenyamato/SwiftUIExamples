//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Raiden Yamato on 03.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView {
            VStack() {
                Button {
                    print("Hello world tapped!")
                } label: {
                    Text("Hello World!")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(.purple, lineWidth: 5)
                        }
                }
                
                
                Button {
                    print("Share button tapped")
                } label: {
                    Label {
                        Text("Share")
                            .fontWeight(.semibold)
                            .font(.title)
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title)
                    }
                    
                }
                .buttonStyle(GradientBackgroundStyle())
                
                
                
                Button {
                    print("Edit button tapped")
                } label: {
                    Label {
                        Text("Edit")
                            .fontWeight(.semibold)
                            .font(.title)
                    } icon: {
                        Image(systemName: "square.and.pencil")
                            .font(.title)
                    }
                }
                .buttonStyle(GradientBackgroundStyle())
                
                
                
                Button {
                    print("Delete button tapped")
                } label: {
                    
                    Label {
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    } icon: {
                        Image(systemName: "trash")
                            .font(.largeTitle)
                    }
                }
                .buttonStyle(GradientBackgroundStyle())
                
                
                Button {
                    print("Plus button tapped")
                } label: {
                    Label {
                        
                    } icon: {
                        Image(systemName: "plus")
                        
                        
                    }
                    
                }
                .buttonStyle(PlusButtonStyle())
                
                
                Group {
                    Button {
                        
                    } label: {
                        Text("Buy me a coffe")
                            .font(.largeTitle)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Add to Cart")
                            .font(.title)
                    }
                    Button {
                        
                    } label: {
                        Text("Discover")
                            .font(.headline)
                            .frame(maxWidth: 300)
                    }
                    Button {
                        
                    } label: {
                        Text("Check out")
                            .font(.subheadline)
                    }
                    
                    
                }
                .tint(.purple)
                //            .buttonStyle(.borderedProminent)
                .buttonStyle(.bordered)
                // .buttonBorderShape(.roundedRectangle(radius: 5))
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                
                
                Button("Delete", role: .destructive) {
                    print("Delete")
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
            }
        }
        
        
        
    }
}


struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0,maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

struct PlusButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .fontDesign(.rounded)
            .foregroundColor(.white)
            .padding()
            .background(.purple)
            .clipShape(Circle())
            .rotationEffect(.degrees(configuration.isPressed ? 45 : 0))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

