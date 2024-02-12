//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Raiden Yamato on 20.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
            Text("**This is how you bold a text**. *This is how you make text italic.* You can [click this link](https://www.appcoda.com) to go to appcoda.com")
                .font(.title)
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
