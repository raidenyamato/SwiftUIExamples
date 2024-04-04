//
//  ContentView.swift
//  SwiftUINavigationList
//
//  Created by Raiden Yamato on 02.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    var restaurants = [
        Restaurant(name: "Cafe Deadend", image: "cafedeadend"),
        Restaurant(name: "Homei", image: "homei"),
        Restaurant(name: "Teakha", image: "teakha"),
        Restaurant(name: "Cafe Loisl", image: "cafeloisl"),
        Restaurant(name: "Petite Oyster", image: "petiteoyster"),
        Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"),
        Restaurant(name: "Po's Atelier", image: "posatelier"),
        Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),
        Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"),
        Restaurant(name: "Palomino Espresso", image: "palominoespresso"),
        Restaurant(name: "Homei", image: "upstate"),
        Restaurant(name: "Traif", image: "traif"),
        Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamavenuemeats"),
        Restaurant(name: "Waffle & Wolf", image: "wafflewolf"),
        Restaurant(name: "Five Leaves", image: "fiveleaves"),
        Restaurant(name: "Cafe Lore", image: "cafelore"),
        Restaurant(name: "Confessional", image: "confessional"),
        Restaurant(name: "Barrafina", image: "barrafina"),
        Restaurant(name: "Donostia", image: "donostia"),
        Restaurant(name: "Royal Oak", image: "royaloak"),
        Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen")
    ]
    
    init() {
        let navBarStandarAppearance = UINavigationBarAppearance()
        navBarStandarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red, .font: UIFont(name: "ArialRoundedMTBold", size: 35)!]
        navBarStandarAppearance.titleTextAttributes = [.foregroundColor: UIColor.red,
            .font: UIFont(name: "ArialRoundedMTBold", size: 20)!]
        
        let navBarScrollEdgeAppearance = UINavigationBarAppearance()
        navBarScrollEdgeAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.green, .font: UIFont(name: "ArialRoundedMTBold", size: 35)!]
        navBarScrollEdgeAppearance.titleTextAttributes = [.foregroundColor: UIColor.green,
            .font: UIFont(name: "ArialRoundedMTBold", size: 20)!]
        
        let navBarCompactAppearance = UINavigationBarAppearance()
        navBarCompactAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.purple, .font: UIFont(name: "ArialRoundedMTBold", size: 35)!]
        navBarCompactAppearance.titleTextAttributes = [.foregroundColor: UIColor.purple,
            .font: UIFont(name: "ArialRoundedMTBold", size: 20)!]
        
        navBarScrollEdgeAppearance.setBackIndicatorImage(UIImage(systemName: "arrow.turn.up.left"), transitionMaskImage: UIImage(systemName: "arrow.turn.up.left"))
        
        UINavigationBar.appearance().standardAppearance = navBarStandarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarScrollEdgeAppearance
        UINavigationBar.appearance().compactAppearance = navBarCompactAppearance
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(restaurants) { restaurant in
                    NavigationLink(destination: RestaurantDetailView(restaurant: restaurant)) {
                        BasicImageRow(restaurant: restaurant)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Restaurant")
            .navigationBarTitleDisplayMode(.automatic)
        }
        .accentColor(.purple)
    }
}



struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct BasicImageRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        HStack{
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaurant.name)
        }
       
    }
       
    
}

#Preview(traits: .defaultLayout){
    ContentView()
}
