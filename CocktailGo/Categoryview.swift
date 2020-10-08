//
//  Categoryview.swift
//  CocktailGo
//
//  Created by Madhav on 08/10/20.
//

import SwiftUI

struct Categoryview: View {
    
    @Environment(\.presentationMode) var presentationMode
//    @Binding  var show : Bool
    var  categories = ["Ordinary Drink","Cocktail","Cocoa","Shot","Coffee","Beer","soda","other","Shake"]

    var body: some View {

        VStack {
            
            VStack {
                HStack() {
                    Text("Categories")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                    Spacer()
                }.padding(.top,45)
                .padding(.leading,30)
                .padding(.bottom,20)
            }        .background(Color("Color1")).edgesIgnoringSafeArea(.all)

           
            
            List {
                ForEach(categories,id:\.self) {
                    category in
                 Text(category)
                    .font(.title2)
                }

            }.padding()
            
            
            Button(action : { self.presentationMode.wrappedValue.dismiss()}) {
                
                Text("Dismiss")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 45)
                    .background(Color("Color1"))
                    .clipShape(Capsule())
                    .padding(.vertical)
                
            }
            
        }
        
        }
    
}



