//
//  Home.swift
//  CocktailGo
//
//  Created by Madhav on 08/10/20.
//

import SwiftUI


struct Home : View {
    @State private var search = ""
  @State private var show = false
    @State  var CategoryViewShow = false
    var body: some View {
        NavigationView {
            
              VStack {
                    
                    VStack {
                        HStack {
                            Text("Cocktail Go")
                               
                                .font(.system(size: 35))
                                .fontWeight(.bold)
                            Spacer()
                        }.padding()
                        
                        HStack(spacing: 15){
                            
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                            
                            TextField("Search Cocktail", text: $search)
                        }
                        .padding(.vertical,12)
                        .padding(.horizontal)
                        .background(Color.white)
                        .clipShape(Capsule())
                    }.padding()
                    .background(
                        Color("Color1")
                            .clipShape(CustomCorner(corners: [.bottomLeft,.bottomRight ], size: 30))
                            .ignoresSafeArea(.all)
                            
                    )
                
                HStack() {
                    
                    Text("Categories")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer(minLength: 0)
                    
                    Button(action: {CategoryViewShow.toggle()}) {
                        Text("View all")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }.sheet(isPresented: $CategoryViewShow){
                        Categoryview()
                    }
                }.padding(.leading,10)
                .padding(.trailing,10)
                ScrollView(.horizontal, showsIndicators:false) {
                    
                    HStack(spacing:15) {
                        ForEach(categories,id:\.self) {
                            category in
                            Menu(title: category)
                        }
                    }
                    
                }.padding(.leading,10)
                    
                ScrollView(.vertical,showsIndicators:false) {
                     
                    LazyVGrid(columns:Array(repeating: GridItem(.flexible(),spacing: 20), count: 2),spacing:20) {
                        
                        ForEach(cocktails) {
                            cocktail in
                            NavigationLink(destination:DetailView(cocktail: cocktail)) {
                                
                                CardView(cocktail: cocktail)
                                    .padding(.bottom,8)
                                    .padding(.leading,5)
                                    .padding(.trailing,5)
                                        .shadow(radius: 5)
//                                        .border(Color.red, width: 4)
                            }
                        }
                        
                    }
                    
                    }.padding(.top)
                .padding(.leading,10)
                .padding(.trailing,10)
                



            }
              .navigationBarHidden(true)

             
        }
      
        
        
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}





var  categories = ["Ordinary Drink","Cocktail","Cocoa","Shot","Coffee","Beer","soda","other","Shake"]

struct CustomCorner : Shape {
     
     var corners : UIRectCorner
     var size : CGFloat
     
     func path(in rect: CGRect) -> Path {
         
         let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: size, height: size))
         
         return Path(path.cgPath)
     }
 }


var cocktails = [
    Cocktail(name: "Margareta", category: "ordinary Drink", image: "coc1"),
    Cocktail(name: "Margareta", category: "ordinary Drink", image: "coc2"),
    
    Cocktail(name: "Margareta", category: "ordinary Drink", image: "coc3"),
    Cocktail(name: "Margareta", category: "ordinary Drink", image: "coc1"),
    Cocktail(name: "Margareta", category: "ordinary Drink", image: "coc1"),
    Cocktail(name: "Margareta", category: "ordinary Drink", image: "coc2")
    
]



struct Menu:View {
    var title: String
    var body: some View {
        Button(action : { }) {
            Text(title)
                .font(.system(size: 15))
                .foregroundColor(.black)
                .padding(.vertical,10)
                .padding(.horizontal,20)
                .background(Color("Color1"))
                .cornerRadius(10)
            
        }
    }
}
