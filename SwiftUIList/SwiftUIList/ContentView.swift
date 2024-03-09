//
//  ContentView.swift
//  SwiftUIList
//
//  Created by Raiden Yamato on 08.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"), Restaurant(name: "Homei", image: "homei"),
        Restaurant(name: "Teakha", image: "teakha"),
        Restaurant(name: "Cafe Loisl", image: "cafeloisl"),
        Restaurant(name: "Petite Oyster", image: "petiteoyster"),
        Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"),
        Restaurant(name: "Po's Atelier", image: "posatelier"),
        Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),
        Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"),
        Restaurant(name: "Palomino Espresso", image: "palominoespresso"),
        Restaurant(name: "Upstate", image: "upstate"),
        Restaurant(name: "Traif", image: "traif"),
        Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamaven uemeats"),
        Restaurant(name: "Waffle & Wolf", image: "wafflewolf"),
        Restaurant(name: "Five Leaves", image: "fiveleaves"),
        Restaurant(name: "Cafe Lore", image: "cafelore"),
        Restaurant(name: "Confessional", image: "confessional"),
        Restaurant(name: "Barrafina", image: "barrafina"),
        Restaurant(name: "Donostia", image: "donostia"),
        Restaurant(name: "Royal Oak", image: "royaloak"),
        Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen")
                        ]
                        
               
    var body: some View {
        
        List {
            ForEach(restaurants.indices, id: \.self) { index in
                if (0...1).contains(index) {
                    FullImageRow(restaraunt: self.restaurants[index])
                } else {
                    BasicImageRow(restaraunt: self.restaurants[index])
                }
            }
           // .listRowSeparatorTint(.green)
            //.listRowSeparator(.hidden, edges: .bottom)
//            .listRowSeparator(.hidden)
            
        }
       // .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .background(
        Image("homei")
            .resizable()
            .scaledToFill()
            .clipped()
        )
        
    }
}


#Preview {
    ContentView()
}


struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct BasicImageRow: View {
    var restaraunt: Restaurant
    
    var body: some View {
        HStack {
            Image(restaraunt.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaraunt.name)
        }
    }
}


struct FullImageRow: View {
    var restaraunt: Restaurant
    
    var body: some View {
        ZStack(content: {
            Image(restaraunt.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .overlay {
                    Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .opacity(0.2)
                }
            
            Text(restaraunt.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
        })
    }
}
