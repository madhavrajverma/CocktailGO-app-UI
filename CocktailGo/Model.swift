//
//  Model.swift
//  CocktailGo
//
//  Created by Madhav on 08/10/20.
//

import SwiftUI
import Foundation

struct Cocktail : Identifiable {
 
    var id = UUID().uuidString
    let name: String
    let category:String
    let image: String

    
    
}
