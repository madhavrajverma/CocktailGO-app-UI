//
//  Favourite.swift
//  CocktailGo
//
//  Created by Madhav on 08/10/20.
//

import SwiftUI

struct Favourite: View {
    
    let favourites  = [  Cocktail(name: "Margareta", category: "ordinary Drink", image: "coc1"),
                         Cocktail(name: "Margareta", category: "ordinary Drink", image: "coc2"),
                         
                         Cocktail(name: "Margareta", category: "ordinary Drink", image: "coc3"),
    ]
    
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                VStack {
                    HStack {
                        Text("Favourites")
                            .font(.system(size: 35))
                            .fontWeight(.bold)
                        Spacer()
                    }.padding(.top,45)
                    .padding(.leading,30)
                }
               
                
                List {
                    ForEach(favourites) {
                        favourite in
                        
                        
                        NavigationLink(destination:DetailView(cocktail: favourite)) {
                            HStack {
                                Image(favourite.image)
                                    .resizable()
                                    .renderingMode(.original)
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                    .padding(.trailing,20)
                                
                                
                                Text(favourite.name)
                                    .font(.title3)
                            }.cornerRadius(2)
                        }
                       
                    }

                }
                
            }
            .background(Color("Color1")).edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
        }
        
     }
    
}

struct Favourite_Previews: PreviewProvider {
    static var previews: some View {
        Favourite()
    }
}
