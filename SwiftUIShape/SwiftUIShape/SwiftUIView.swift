//
//  SwiftUIView.swift
//  SwiftUIShape
//
//  Created by Raiden Yamato on 15.02.2024.
//

import SwiftUI

struct Dome: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(
            to: CGPoint(x: rect.size.width, y: 0),
            control: CGPoint(x: rect.size.width/2,
                             y: -(rect.size.width * 0.1)))
        path.addRect(CGRect(x: 0, y: 0,
                            width: rect.size.width,
                            height: rect.size.height))
        
        return path 
    }
}

struct Dome_Previews: PreviewProvider {
    static var previews: some View {
        Dome()
    }
}
