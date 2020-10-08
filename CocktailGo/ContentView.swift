//
//  ContentView.swift
//  CocktailGo
//
//  Created by Madhav on 07/10/20.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
    
        TabView {
            
            Home().tabItem {
                
                HStack {
                    Image(systemName: "house.fill")
                        .foregroundColor(Color("Color1"))
                    Text("Home")
                }
                
            }
            
            Favourite().tabItem {
                
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Favourite")
                }
                
            }
        }

    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



