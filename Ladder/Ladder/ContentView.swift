//
//  ContentView.swift
//  Ladder
//
//  Created by Raiden Yamato on 29.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .center) {
            
            PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: Color(red: 162/255, green: 92/255, blue: 512/255), icon: "checkmark")
                .offset(y: 210)
                
            PricingView(title: "Pro", price: "$19", textColor: .white, bgColor: Color(red: 245/255, green: 185/255, blue: 74/255), icon: "dial.low")
                .scaleEffect(0.95)
                
            PricingView(title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 62/255, blue: 70/255), icon: "wand.and.rays")
                .offset(y: -215)
                .scaleEffect(0.9)
                
        }
        .padding(.horizontal)
    }
}




struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var icon: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(systemName: icon)
                .font(.largeTitle)
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
            Text("per month")
        }
        .padding(.vertical, 30)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(bgColor)
        .cornerRadius(10)
        
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
