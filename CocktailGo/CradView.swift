//
//  CradView.swift
//  CocktailGo
//
//  Created by Madhav on 08/10/20.
//

import SwiftUI
struct CardView : View {
    var cocktail:Cocktail
    var body: some View {
        VStack(alignment:.leading) {
            
            VStack(alignment:.leading) {
                Image(cocktail.image)
                        .resizable()
                        .renderingMode(.original)
                        .frame(width:150,height:150)
//                        .padding(.top,10)
                        .padding()
//                        .cornerRadius(20)
  
                    HStack {
                        VStack(alignment: .leading, spacing: 12) {
                            Text(cocktail.name)
                                .font(.title3)
                            
                            Text(cocktail.category)
                        }
                        .foregroundColor(.black)
                     
                    Spacer(minLength: 0)
                    }
                    .padding()

                
            }
            .background(Color.white)
//            .padding(7)
//            .background(Color("Color1"))
            .cornerRadius(10)

            
            
            
        }.padding()
       
    }
}

