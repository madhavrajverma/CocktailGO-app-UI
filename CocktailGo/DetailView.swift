//
//  DetailView.swift
//  CocktailGo
//
//  Created by Madhav on 08/10/20.
//

import SwiftUI

struct DetailView: View {
    let  cocktail: Cocktail
    let strInstruction  = "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass"
    
    var body: some View {
        
        
        ScrollView(.vertical) {
            
            
            VStack {
                VStack {
                    VStack {
                        
                        Text(cocktail.name)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                        
                        
                    }.padding()
                    
                    
                    
                    VStack{
                        
                        Image(cocktail.image)
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 350, height: 250)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                    }
                    
                    HStack{
                        
                        Text("Category: ")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                        
                        Text(cocktail.category)
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                        
                        
                    }.padding()
                    
                    
                    VStack{
                        
                        Text("Str Instruction")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .padding(.bottom,10)
                        
                        Text(strInstruction)
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                        
                        
                    }.padding()
                    
                    
                    Button(action : { }) {
                        Text("Add to Favourite")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .padding(.vertical)
                            .frame(width:UIScreen.main.bounds.width - 45)
                            .background(Color("Color1"))
                            .clipShape(Capsule())
                            .padding(.vertical)

                    }.padding(.top,20)
                    
                    
                }.background(
                    Color(.white)
                        .clipShape(CustomCorner(corners: [.bottomLeft,.bottomRight ], size: 30))
                        .ignoresSafeArea(.all)
                    
                )
            }
            
            
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarColor(UIColor(Color("Color1")))
        
    }
    
    
}




struct NavigationBarModifier: ViewModifier {
        
    var backgroundColor: UIColor?
    
    init( backgroundColor: UIColor?) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithTransparentBackground()
        coloredAppearance.backgroundColor = .clear
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .black

    }
    
    func body(content: Content) -> some View {
        ZStack{
            content
            VStack {
                GeometryReader { geometry in
                    Color(self.backgroundColor ?? .clear)
                        .frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Spacer()
                }
            }
        }
    }
}


extension View {
 
    func navigationBarColor(_ backgroundColor: UIColor?) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }

}




//struct DetailView_Previews: PreviewProvider {
//    let example = Cocktail(id:UUID().uuidString , name: "Margreta", category: "ordinaryDrink", image: "coc1")
//    static var previews: some View {
//        DetailView(cocktail: example)
//    }
//}
